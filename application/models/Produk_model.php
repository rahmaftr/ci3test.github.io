<?php
class Produk_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function get_produk()
    {
        $this->db->where('status', 'bisa dijual');
        $query = $this->db->get('produk');
        return $query->result_array();
    }

    public function tambah_produk($data)
    {
        $this->db->insert('produk', $data);
    }

    public function get_produk_by_id($no)
    {
        $query = $this->db->get_where('produk', array('no' => $no));
        return $query->row_array();
    }

    public function edit_produk($no, $data)
    {
        $this->db->where('no', $no);
        $this->db->update('produk', $data);
    }

    public function hapus_produk($no)
    {
        $this->db->where('no', $no);
        $this->db->delete('produk');
    }
}
?>
