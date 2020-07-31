{foreach $positions as $position}
    {$position.title}
    <div class="accordion" id="accordionExample">
        {foreach $position.items as $item index=$index}
            <div class="card">
                <div class="card-header" id="heading-{$index}">
                    <a class="mb-0 h2">
                        <button class="btn btn-link btn-block text-left accordion-toogle" type="button" data-toggle="collapse" data-target="#collapse-{$index}" aria-expanded="{$index == 0 ? 'true' : 'false'}" aria-controls="collapse-{$index}">
                            {$item.name}
                        </button>
                    </a>
                </div>

                <div id="collapse-{$index}" class="collapse {$index == 0 ? ' show' : ''}" aria-labelledby="heading-{$index}" data-parent="#accordionExample">
                    <div class="card-body">
                        {$item.content}
                    </div>
                </div>
            </div>
        {/foreach}
    </div>
{/foreach}