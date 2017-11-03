from rest_framework import status
from rest_framework.test import APITestCase
from django.contrib.auth.models import User
import json

DefaultName = "name"


def set_credentials(client):
    user = User.objects.create_superuser('admin', 'admin@admin.com', '123456@admin')
    user.save()

    url = '/api-token-auth/'
    data = {'username': 'admin', 'password': '123456@admin'}
    response = client.post(url, data, format='json')
    token = json.loads(response.content)['token']
    client.credentials(HTTP_AUTHORIZATION='Token ' + token)


def create_corporation(client):
    url = '/corporations'
    data = {
        'name': DefaultName,
        'desc': 'desc',
        'domain': 'domain',
        'auth_url': 'http://api.qianbao.com/auth',
        'auth_type': 'restful',
        'auth_lambda': 'return True',
        'access_domain': 'www.qianbao.com',
    }
    return client.post(url, data, format='json')


def create_api_group(client, corporation_id):
    url = '/api_groups'
    data = {
        'name': DefaultName,
        'desc': 'desc',
        'corporation': '/corporations/' + str(corporation_id),
    }
    return client.post(url, data, format='json')


def create_api(client, api_group_id):
    url = '/apis'
    data = {
        'name': DefaultName,
        'desc': 'desc',
        'api_group': '/api_groups/' + str(api_group_id),
    }
    return client.post(url, data, format='json')


def create_api_version(client, api_id):
    url = '/api_versions'
    data = {
        'api': '/apis/' + str(api_id),
        'desc': 'desc',
        'outer_url': '/test/'+ str(api_id),
        'inner_url': 'http://test.com',
        'is_method_get': True,
        'is_method_put': True,
        'is_method_patch': True,
        'is_method_delete': True,
        'is_strip_uri': True,
        'retries': 5,
        'upstream_connect_timeout': 60000,
        'upstream_send_timeout': 60000,
        'upstream_read_timeout': 60000,
        'is_preserve_host': False,
        'is_https_only': False,
        'is_audit': True,
    }
    return client.post(url, data, format='json')


def list_corporation(client):
    url = '/corporations'
    return client.get(url)


def list_developer(client):
    url = '/developers'
    return client.get(url)


def list_api_group(client):
    url = '/api_groups'
    return client.get(url)


def list_api(client):
    url = '/apis'
    return client.get(url)


def list_api_version(client):
    url = '/api_versions'
    return client.get(url)


class CorporationTests(APITestCase):
    def test_create_corporation(self):
        """
        Ensure we can create a new Corporation object.
        """
        # set_credentials(self.client)

        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_list_corporation(self):
        """
        list corporations
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

        response = list_corporation(self.client)
        self.assertEquals(response.status_code, status.HTTP_200_OK)
        data = response.json()
        self.assertEquals(data["count"], 1)
        self.assertEquals(data["results"][0]["name"], DefaultName)

    def test_get_corporation(self):
        """
        get corporation
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

        get = self.client.get("/corporations/"+response.json()["id"])
        self.assertEqual(get.status_code, status.HTTP_200_OK)
        self.assertJSONEqual(response.content, get.json())

    def test_update_corporation(self):
        """
        update corporation
        :return:
        """
        c = create_corporation(self.client)
        self.assertEqual(c.status_code, status.HTTP_201_CREATED)
        corporation = c.json()
        corporation["is_deleted"] = True

        r = self.client.patch("/corporations/"+corporation["id"], data=corporation)
        self.assertEqual(r.status_code, status.HTTP_200_OK)
        self.assertEquals(r.json()["is_deleted"], True)

    def test_delete_corporation(self):
        c = create_corporation(self.client)
        self.assertEqual(c.status_code, status.HTTP_201_CREATED)
        data = c.json()

        d = self.client.delete("/corporations/" + data["id"])
        self.assertEqual(d.status_code, status.HTTP_405_METHOD_NOT_ALLOWED)

        r = self.client.get("/corporations/" + data["id"])
        self.assertEqual(r.status_code, status.HTTP_200_OK)
        self.assertJSONEqual(c.content, r.json())


class ApiGroupTests(APITestCase):
    def test_create_api_group(self):
        """
        Ensure we can create a new api_group object.
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_list_api_group(self):
        """
        list api_group
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()

        response = self.client.get("/api_groups")
        self.assertEquals(response.status_code, status.HTTP_200_OK)
        self.assertJSONEqual(json.dumps(api_group), response.json()["results"][0])

    def test_get_api_group(self):
        """
        get api_group
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()

        response = self.client.get("/api_groups/" + api_group["id"])
        self.assertEquals(response.status_code, status.HTTP_200_OK)
        self.assertJSONEqual(json.dumps(api_group), response.json())

    def test_update_api_group(self):
        """
        update api_group
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()
        api_group["is_deleted"] = True

        response = self.client.patch("/api_groups/" + api_group["id"], data=api_group)
        self.assertEquals(response.status_code, status.HTTP_200_OK)
        self.assertNotEqual(response.json()["updated_at"], api_group["updated_at"])
        self.assertEquals(response.json()["is_deleted"], True)


class ApiTests(APITestCase):
    def test_create_api(self):
        """
        Ensure we can create a new api object.
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()

        response = create_api(self.client, api_group["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_list_api(self):
        """
        list api
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()

        response = create_api(self.client, api_group["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api = response.json()

        response = self.client.get("/apis")
        self.assertEquals(response.status_code, status.HTTP_200_OK)
        self.assertJSONEqual(json.dumps(api), response.json()["results"][0])

    def test_get_api(self):
        """
        get api
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()

        response = create_api(self.client, api_group["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api = response.json()

        response = self.client.get("/apis/" + api["id"])
        self.assertEquals(response.status_code, status.HTTP_200_OK)
        self.assertJSONEqual(json.dumps(api), response.json())

    def test_update_api(self):
        """
        update api
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()

        response = create_api(self.client, api_group["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api = response.json()
        api["is_deleted"] = True

        response = self.client.patch("/apis/" + api["id"], data=api)
        self.assertEquals(response.status_code, status.HTTP_200_OK)
        self.assertNotEqual(response.json()["updated_at"], api["updated_at"])
        self.assertEquals(response.json()["is_deleted"], True)


class ApiVersionTests(APITestCase):
    def test_create_api_version(self):
        """
        Ensure we can create a new api_version object.
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()

        response = create_api(self.client, api_group["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api = response.json()

        response = create_api_version(self.client, api["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_list_api_version(self):
        """
        list api_version
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()

        response = create_api(self.client, api_group["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api = response.json()

        response = create_api_version(self.client, api["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_version = response.json()

        response = self.client.get("/api_versions")
        self.assertEquals(response.status_code, status.HTTP_200_OK)
        self.assertJSONEqual(json.dumps(api_version), response.json()["results"][0])

    def test_get_api_version(self):
        """
        get api_version
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()

        response = create_api(self.client, api_group["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api = response.json()

        response = create_api_version(self.client, api["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_version = response.json()

        response = self.client.get("/api_versions/" + api_version["id"])
        self.assertEquals(response.status_code, status.HTTP_200_OK)
        self.assertJSONEqual(json.dumps(api_version), response.json())

    def test_update_api_version(self):
        """
        update api_version
        :return:
        """
        response = create_corporation(self.client)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        corporation = response.json()

        response = create_api_group(self.client, corporation["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_group = response.json()

        response = create_api(self.client, api_group["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api = response.json()

        response = create_api_version(self.client, api["id"])
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        api_version = response.json()
        api_version["is_deleted"] = True

        response = self.client.patch("/api_versions/" + api_version["id"], data=api_version)
        self.assertEquals(response.status_code, status.HTTP_200_OK)
        self.assertNotEqual(response.json()["updated_at"], api_version["updated_at"])
        self.assertEquals(response.json()["is_deleted"], True)

