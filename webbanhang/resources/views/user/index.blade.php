@php
$title = "Quản Lý Người Dùng";
@endphp
@extends('layouts.master-admin')

@section('content')
<a href="{{ route('user.view') }}"><button class="btn btn-success mb-3">Add new user</button></a>

<table class="table mb-0 table-hover align-middle text-nowrap">
    <thead>
        <tr>
            <th class="border-top-0">No</th>
            <th class="border-top-0">Name</th>
            <th class="border-top-0">Email</th>
            <th class="border-top-0">Phone Number</th>
            <th class="border-top-0">Address</th>
            <th class="border-top-0">Role Name</th>
            <th class="border-top-0">Updated At</th>
            <th class="border-top-0" style="width: 100px"></th>
        </tr>
    </thead>
    <tbody>
        @foreach($dataList as $item)
            <tr>
                <td>{{ ++$index }}</td>
                <td>{{ $item->name }}</td>
                <td>{{ $item->email }}</td>
                <td>{{ $item->phone_number }}</td>
                <td>{{ $item->address }}</td>
                <td>{{ $item->role_name }}</td>
                <td>{{ getTimeFormat($item->updated_at) }}</td>
                <td>
                    <a href="{{ route('user.view') }}?id={{ $item->id }}"><button class="btn btn-warning">Edit</button></a>
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
    function deleteItem(id) {
        var option = confirm('Are you sure to delete this item')
        if(!option) return

        $.post('{{ route('user.delete') }}', {
            '_token': '{{ csrf_token() }}',
            'id': id
        }, function(data) {
            location.reload()
        })
    }
</script>
@stop