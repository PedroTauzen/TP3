<?php

namespace controllers;

class Home extends \Controller
{
    protected function Index(): void
    {
        $viewmodel = new HomeModel();
        $this->returnView($viewmodel->Index(), true);
    }
}