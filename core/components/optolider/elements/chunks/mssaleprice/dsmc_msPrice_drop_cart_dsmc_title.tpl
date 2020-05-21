{foreach $prices as $price}
{if $price.count == 1 and $price.price != 0}
{$price.price}
{/if}
{/foreach}