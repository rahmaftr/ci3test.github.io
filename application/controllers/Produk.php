<?php
class Produk extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('produk_model');
        $this->load->helper('form');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['produk'] = $this->produk_model->get_produk();
        $this->load->view('produk/index', $data);
    }

    public function tambah()
    {
        $this->form_validation->set_rules('id_produk', 'ID Produk', 'required');
        $this->form_validation->set_rules('nama_produk', 'Nama Produk', 'required');
        $this->form_validation->set_rules('harga', 'Harga', 'required|numeric');

        if ($this->form_validation->run() === FALSE) {
            $this->load->view('produk/tambah');
        } else {
            $data = array(
                'id_produk' =>$this->input->post('id_produk'),
                'nama_produk' => $this->input->post('nama_produk'),
                'harga' => $this->input->post('harga'),
                'kategori' => $this->input->post('kategori'),
                'status' => $this->input->post('status')
            );
            $this->produk_model->tambah_produk($data);
            redirect('produk');
        }
    }

    public function edit($no)
    {
        $this->form_validation->set_rules('id_produk', 'ID Produk', 'required');
        $this->form_validation->set_rules('nama_produk', 'Nama Produk', 'required');
        $this->form_validation->set_rules('harga', 'Harga', 'required|numeric');

        if ($this->form_validation->run() === FALSE) {
            $data['produk'] = $this->produk_model->get_produk_by_id($no);
            $this->load->view('produk/edit', $data);
        } else {
            $data = array(
                'id_produk' => $this->input->post('id_produk'),
                'nama_produk' => $this->input->post('nama_produk'),
                'harga' => $this->input->post('harga'),
                'kategori' => $this->input->post('kategori'),
                'status' => $this->input->post('status')
            );
            $this->produk_model->edit_produk($no, $data);
            redirect('produk');
        }
    }

    public function hapus($no)
    {
        $this->produk_model->hapus_produk($no);
        redirect('produk');
    }
}
?>
