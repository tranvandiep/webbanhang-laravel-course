@php
$title = "Quản Lý Đơn Hàng";
@endphp
@extends('layouts.master-admin')

@section('content')
<table class="table mb-0 table-hover align-middle text-nowrap">
    <thead>
        <tr>
            <th class="border-top-0">No</th>
            <th class="border-top-0">Full Name</th>
            <th class="border-top-0">Email</th>
            <th class="border-top-0">Phone Number</th>
            <th class="border-top-0">Address</th>
            <th class="border-top-0">Note</th>
            <th class="border-top-0">Order Date</th>
            <th class="border-top-0">Status</th>
            <th class="border-top-0">Total Money</th>
            <th class="border-top-0" style="width: 100px"></th>
        </tr>
    </thead>
    <tbody>
        @foreach($dataList as $item)
            <tr>
                <td>{{ ++$index }}</td>
                <td>{{ $item->fullname }}</td>
                <td>{{ $item->email }}</td>
                <td>{{ $item->phone_number }}</td>
                <td>{{ $item->address }}</td>
                <td>{{ $item->note }}</td>
                <td>{{ getTimeFormat($item->order_date) }}</td>
                <td>
                    @if($item->status == 0)
                        <label class="label label-warning">Pending</label>
                    @elseif($item->status == 1)
                        <label class="label label-success">Approved</label>
                    @else
                        <label class="label label-danger">Cancel</label>
                    @endif
                </td>
                <td>{{ number_format($item->total_money, 0) }}</td>
                <td>
                    @if($item->status == 0)
                        <button class="btn btn-success" onclick="updateItem({{ $item->id }}, 1)">Appove</button>
                        <button class="btn btn-danger" onclick="updateItem({{ $item->id }}, 2)">Cancel</button>
                    @endif
                    <a href="{{ route('order.detail') }}?id={{ $item->id }}"><button class="btn btn-info">Details</button></a>
                    <button class="btn btn-danger" onclick="deleteItem({{ $item->id }})">Delete</button>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

{!! $dataList->links() !!}
@endsection

@section('js')
<script type="text/javascript">
    function updateItem(id, status) {
        if(status == 1) {
            var option = confirm('Are you sure to update order\'s status "Approved"?')
        } else {
            var option = confirm('Are you sure to update order\'s status "Cancel"?')
        }
        if(!option) return

        $.post('{{ route('order.update') }}', {
            '_token': '{{ csrf_token() }}',
            'id': id,
            'status': status
        }, function(data) {
            location.reload()
        })
    }

    function deleteItem(id) {
        var option = confirm('Are you sure to delete this item')
        if(!option) return

        $.post('{{ route('order.delete') }}', {
            '_token': '{{ csrf_token() }}',
            'id': id
        }, function(data) {
            location.reload()
        })
    }
</script>
@stop