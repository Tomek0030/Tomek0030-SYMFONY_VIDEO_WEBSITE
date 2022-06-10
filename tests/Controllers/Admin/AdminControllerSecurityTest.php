<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Response;
use App\Repository\UserRepository;

class AdminControllerSecurityTest extends WebTestCase
{
    /**
     * @dataProvider getUrlsForRegularUsers
     */
    public function testAccessDeniedForRegularUsers(string $httpMethod, string $url): void
    {

        $this->client = static::createClient();

        $userRepo = static::$container->get(UserRepository::class);
        $user = $userRepo->findOneBy(['email' => 'jd@symf5.loc']);
        $client = $this->client->loginUser($user);

        $client->request($httpMethod, $url);
        $this->assertSame(Response::HTTP_FORBIDDEN, $client->getResponse()->getStatusCode());
    }

    public function getUrlsForRegularUsers()
    {
        yield ['GET', '/admin/su/categories'];
        yield ['GET', '/admin/su/edit-category/1'];
        yield ['GET', '/admin/su/delete-category/1'];
        yield ['GET', '/admin/su/users'];
        yield ['GET', '/admin/su/upload-video'];
    }

    public function testAdminSu()
    {

        $this->client = static::createClient();

        $userRepo = static::$container->get(UserRepository::class);
        $user = $userRepo->findOneBy(['email' => 'jw@symf5.loc']);
        $client = $this->client->loginUser($user);

        $crawler = $client->request('GET', '/admin/su/categories');

        $this->assertSame('Categories list', $crawler->filter('h2')->text());
    }
}

