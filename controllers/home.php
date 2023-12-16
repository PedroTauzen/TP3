<?php

namespace controllers;

use models\HomeModel;

class Home extends Controller
{
    protected function Index(): void
    {
        $viewmodel = new HomeModel();
        $this->returnView($viewmodel->Index(), true);
    }
}