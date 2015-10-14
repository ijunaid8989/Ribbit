Ribbit
======



Application is an Twitter App Clone. and inspired by the Tutorials of 
 [Sir Andrew Burgess](https://twitter.com/andrew8088)

Online Live Version : [Ribbit](https://zainjunistan.herokuapp.com/)

Author : [Junaid Farooq](http://ijunaidfarooq.herokuapp.com/)

And Big Big Thanks to my inspirations in Programming world

[Sir Jeffery Way](https://twitter.com/jeffrey_way), [Sir José Mota](https://twitter.com/josemotanet) and [Sir Andrew Burgess](https://twitter.com/andrew8088)


> **Note:** 2 More features have been added
> - user can see his **MENTIONS** ,
> - user can also **delete** tweets

Tweets Deleting feature in not implemented but if you want it then simply Add SPAN tag in Ribbits/Show with other spans

```
<span class="time"><%= button_to "Delete", { action: "destroy", id: ribbit.id }, method: :delete, data: { confirm: "Are you sure?" }%></span>
```
