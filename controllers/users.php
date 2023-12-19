<?php

namespace controllers;

class Users extends \Controller
{
    protected function register(): void
    {
        $viewmodel = new \UserModel();
        $this->returnView($viewmodel->register(), true);
    }

    protected function login(): void
    {
        $viewmodel = new \UserModel();
        $this->returnView($viewmodel->login(), true);
    }

    protected function logout(): void
    {
        unset($_SESSION['is_logged_in']);
        unset($_SESSION['user_data']);
        session_destroy();
        //Redirect
        header('Location:' . ROOT_URL);
    }
}