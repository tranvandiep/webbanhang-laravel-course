<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    use HasFactory;

    protected $table = "orders";

    public $timestamps = false;

    protected $fillable = [
        'user_id',
        'fullname',
        'email',
        'phone_number',
        'address',
        'note',
        'order_date',
        'status',
        'total_money'
    ];
}
