<?php
class ShareModel extends Model
{
    public function Index()
    {
        $this->query('SELECT * FROM shares ORDER BY create_date DESC');
        $rows = $this->resultSet();
        return $rows;
    }

    public function add(): void
    {
        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

        if ($post['submit']) {
            if ($post['title'] == '' || $post['body'] == '') {
                Messages::setMsg('Please fill in all fields', 'error');
                return;
            }
            $this->query('INSERT INTO shares (title, body, link, user_id) VALUES (:title, :body, :link, :user_id)');
            $this->query(':title', $post['title']);
            $this->query(':body', $post['body']);
            $this->query(':link', $post['link']);
            $this->query(':user_id', 1);
            $this->execute();

            if ($this->lastInsertId()) {
                header('Location' . ROOT_URL . 'shares');
            }
        }
        return;
    }
}