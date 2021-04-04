<div class="row">
{foreach $data as $key => $row}
    <div class="col-lg-3 mb-5">
    <div class="h5 mb-3">
        {$key}
    </div>
    <ul class="nav flex-column">
    {foreach $row as $item}
        <li class="nav-item d-flex justify-content-between align-items-center">
            <a href="{$item.uri}" class="nav-link px-0">{$item.pagetitle}</a>
            <span class="text-sm text-muted">{$item.id | dsmc_vendor_count}</span>
        </li>
    {/foreach}
    </ul>
    </div>
{/foreach}
</div>