<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class AdminControllerSubscriptionTest extends WebTestCase
{
    use RoleUser;


        public function testDeleteSubscription(): void
        {
            // $this->client->followRedirects();


            $crawler = $this->client->request('GET', '/admin/');

            $link = $crawler
            ->filter('a:contains("cancel plan")')
            ->link();

            $this->client->click($link);

            $this->client->request('GET', '/video-list/category/toys,2');

            $this->assertStringContainsString( 'Video for <b>MEMBERS</b> only.', $this->client->getResponse()->getContent() );

        }
}
