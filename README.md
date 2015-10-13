Ribbit
======


Delet feature has been added but not implemented if you want to add it just copy past this span tag in ribbits/show 

```
<span class="time"><%= button_to "Delete", { action: "destroy", id: ribbit.id }, method: :delete, data: { confirm: "Are you sure?" }%></span>
```
