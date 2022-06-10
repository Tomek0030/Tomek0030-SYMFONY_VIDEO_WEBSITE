<?php
namespace App\Tests;

use App\Repository\UserRepository;

trait Rollback {

    public function setUp(): void
    {
        parent::setUp();

        $this->client = static::createClient();

        $userRepo = static::$container->get(UserRepository::class);
        $user = $userRepo->findOneBy(['email' => 'jw@symf5.loc']);
        $this->client->loginUser($user);


        $this->entityManager = $this->client->getContainer()->get('doctrine.orm.entity_manager');

    }

    public function tearDown(): void
    {
        parent::tearDown();
  
        $this->entityManager->close();    
        $this->entityManager = null; // avoid memory leaks   
    }
}
