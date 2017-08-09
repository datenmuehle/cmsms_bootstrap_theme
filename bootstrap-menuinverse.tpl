<div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        {if $count > 0}
            {foreach from=$nodelist item=node}
                {if $node->depth > $node->prevdepth}
                    {repeat string="<ul class='dropdown-menu'>" times=$node->depth-$node->prevdepth}
                {elseif $node->depth < $node->prevdepth}
                    {repeat string="</li></ul>" times=$node->prevdepth-$node->depth}
                    </li>
                {elseif $node->index > 0}
                    </li>
                {/if}
                {if $node->children_exist && $node->hierarchy|strstr:"."}
                    <li class="dropdown-submenu">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext}</a>
                {elseif $node->children_exist}
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} <span class="caret"/></a>
                {else}
                    <li><a href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}> {$node->menutext} </a>
                {/if}
            
            {/foreach}
            
            {repeat string="</li></ul>" times=$node->depth-1}</li>
        {/if}
      </ul>
      <ul class="nav navbar-nav navbar-right">
            <li>{bs_link_static_1}</li>
            <li>{bs_link_static_2}</li>
            <li>{bs_link_static_3}</li>
      </ul>
    </div>
</div>