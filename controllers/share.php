<?php

namespace controllers;

use models\ShareModel;

class Share extends Controller
{
    protected function Index(): void
    {
        $viewmodel = new ShareModel();
        $this->returnView($viewmodel->Index(), true);
    }

    protected function add(): void
    {
        if (!isset($_SESSION['is_logged_in'])) {
            header('Location: ' . ROOT_URL . 'shares');
        }
        $viewmodel = new ShareModel();
        $this->returnView($viewmodel->add(), true);
    }
}