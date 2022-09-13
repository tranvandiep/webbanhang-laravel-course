@php
$title = "Quản Lý Phản Hồi";
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
            <th class="border-top-0">Subject Name</th>
            <th class="border-top-0">Note</th>
            <th class="border-top-0">Updated At</th>
            <th class="border-top-0">Status</th>
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
                <td>{{ $item->subject_name }}</td>
                <td>{{ $item->note }}</td>
                <td>{{ getTimeFormat($item->updated_at) }}</td>
                <td>
                    @if($item->status == 0)
                        <label class="label label-warning">Not read</label>
                    @else
                        <label class="label label-success">Read</label>
                    @endif
                </td>
                <td>
                    <button class="btn btn-warning" onclick="updateItem({{ $item->id }})">Mark Read</button>
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
    function updateItem(id) {
        $.post('{{ route('feedback.update') }}', {
            '_token': '{{ csrf_token() }}',
            'id': id
        }, function(data) {
            location.reload()
        })
    }

    function deleteItem(id) {
        var option = confirm('Are you sure to delete this item')
        if(!option) return

        $.post('{{ route('feedback.delete') }}', {
            '_token': '{{ csrf_token() }}',
            'id': id
        }, function(data) {
            location.reload()
        })
    }
</script>
@stop