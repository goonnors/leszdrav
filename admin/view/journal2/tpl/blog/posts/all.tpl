<div class="module-header">
   <div class='module-name'>Статьи<span>Список Статей</span></div>
   <div class="module-buttons">
       <a href="javascript:;" class="btn green" data-ng-click="saveModules($event)" data-ng-show="modules.length > 0">Сохранить</a>
       <a href="<?php echo $base_href;?>#/blog/posts/form" class="btn blue">Создать</a>
   </div>
</div>
<form>
   <div class="module-body module-all p-tabs posts-list">
       <div class="accordion-bar bar-level-0 bar-expand" >
           <span style="position: relative; left: -3px;">Заголовок Статьи</span>
           <span class="module-options">
               <span>Просмотров</span>
               <span>Комментов</span>
               <span>Действие</span>
           </span>
       </div>
       <accordion close-others="false">
           <accordion-group data-ng-repeat="post in posts" is-open="false">
               <accordion-heading>
                   <div class="accordion-bar bar-level-0 bar-pt">
                        {{post.name}}
                       <span class="module-options">
                           <span>{{post.views}}</span>
                           <span class="p-com">{{post.comments}}</span>
                           <a href="<?php echo $base_href;?>#/blog/posts/form/{{post.post_id}}" data-ng-click="$event.stopPropagation()" class="accordion-remove edit-module"><b></b>Изменить</a>
                       </span>
                   </div>
               </accordion-heading>
           </accordion-group>
       </accordion>
       <pagination ng-show="paginationTotalItems > paginationItemsPerPage" total-items="paginationTotalItems" page="paginationCurrentPage" max-size="16" items-per-page="paginationItemsPerPage" class="pagination-sm" boundary-links="true"></pagination>
   </div>
</form>