<div class="sticky">
<div class="module-header">
   <div class='module-name'>Статьи<span data-ng-show="post_id == null">Создание Статьи</span><span data-ng-show="post_id != null">Изменение Статьи</span></div>
   <div class="module-buttons">
       <a href="<?php echo $base_href;?>#/blog/posts" class="btn blue">Назад</a>
       <a data-ng-click="save($event)" class="btn green">Сохранить</a>
       <a data-ng-click="delete($event)" data-ng-show="post_id != null" class="btn red">Удалить</a>
   </div>
</div>
</div>
<div class="module-body module-form">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="accordion.close_others" /></label>
   </div>
   <accordion id="main-accordion" close-others="accordion.close_others">
       <accordion-group is-open="accordion.general_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Заголовок Статьи</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="post_data.name"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">ЧПУ Ссылка</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="post_data.keyword"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <switch data-ng-model="post_data.status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                        <input type="text" class="journal-input journal-sort" data-ng-model="post_data.sort_order" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Комментарии</span>
                   <span class="module-create-option">
                       <switch data-ng-model="post_data.comments">
                           <switch-option key="2">Наследовать</switch-option>
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="post_id != null">
                   <span class="module-create-title">Дата Создания</span>
                   <span class="module-create-option">
                        <input type="text" class="journal-input" data-ng-model="post_data.date_created" />
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.details_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Детали Статьи</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Изображение</span>
                   <span class="module-create-option">
                       <image-select image="post_data.image"></image-select>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Автор</span>
                   <span class="module-create-option">
                       <select data-ng-model="post_data.author_id" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Автора'}">
                           <option value=""></option>
                           <option data-ng-repeat="a in authors" value="{{a.user_id}}">{{a.username}}</option>
                       </select>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Содержание Статьи</span>
                   <span class="module-create-option post-editor">
                       <ck-editor data-ng-model="post_data.description"></ck-editor>
                   </span>
               </li>

           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.data_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Мета Данные</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Мета-тег Title</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="post_data.meta_title"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Мета-тег Keywords</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="post_data.meta_keywords"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Мета-тег Description</span>
                   <span class="module-create-option">
                       <j-opt-textarea-lang data-ng-model="post_data.meta_description"></j-opt-textarea-lang>
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.links_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Ссылки Статьи</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Метки</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="post_data.tags"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Категории</span>
                   <span class="module-create-option">
                        <ul class="simple-list">
                            <li data-ng-repeat="category in post_data.categories">
                                <select data-ng-model="category.category_id" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Категорию'}">
                                    <option value=""></option>
                                    <option data-ng-repeat="c in categories" value="{{c.category_id}}">{{c.name}}</option>
                                </select>
                                <a class="btn red delete" href="javascript:;" data-ng-click="removeCategory($index)">X</a>
                            </li>
                        </ul>
                       <a href="javascript:;" class="btn blue add-product" data-ng-click="addCategory()">Добавить</a>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Связанные Продукты</span>
                   <span class="module-create-option">
                        <ul class="simple-list">
                            <li data-ng-repeat="product in post_data.products">
                                <product-search model="product.data"></product-search>
                                <a class="btn red delete" href="javascript:;" data-ng-click="removeProduct($index)">X</a>
                            </li>
                        </ul>
                       <a href="javascript:;" class="btn blue add-product" data-ng-click="addProduct()">Добавить</a>
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.layouts_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Макет</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li data-ng-repeat="store in stores">
                   <span class="module-create-title">Для {{store.name}}</span>
                   <span class="module-create-option">
                       <select class="journal-select" data-ng-model="post_data.layouts['s_' + store.store_id]" ui-select2="{width: 400, minimumResultsForSearch: -1, placeholder: 'Выберите Макет'}" required>
                           <option value="">&nbsp;</option>
                           <option data-ng-repeat="l in layouts" value="{{l.layout_id}}">{{l.name}}</option>
                       </select>
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>
