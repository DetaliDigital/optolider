{foreach $prices as $price last=$last}
{if $last}{$price.price}{/if}
{/foreach}
