<div class="msearch2" id="mse2_mfilter">
     <div class="row sortings py-3 d-flex align-items-center">
            <div id="mse2_sort" class="col-md-5 d-none d-md-flex text-black-50">
                [[-[[%mse2_sort]]]]
            </div>
            <div class="d-flex justify-content-end col-12 col-md-7">
                <select class="form-control col-12 col-md-5" id="mse2_sort">
                    <option class="sort" data-sort="resource|pagetitle" value="asc">Название (А - Я)</option>
                    <option class="sort" data-sort="resource|pagetitle" value="desc">Название (Я - А)</option>
                    <option class="sort" data-sort="ms|price" value="asc">Цена (по возрастанию)</option>
                    <option class="sort" data-sort="ms|price" value="desc">Цена (по убыванию)</option>
                </select>
            </div>
        </div>

        <div id="mse2_selected_wrapper">
            <div id="mse2_selected">[[%mse2_selected]]:
                <span></span>
            </div>
        </div>

        <div id="mse2_results" class="row catalog_0718">
            {$results}
        </div>

        <div class="pagination d-flex justify-content-center text-center my-5 mt-5">
            <div id="mse2_pagination" class="mt-5">
                {'page.nav' | placeholder}
            </div>
        </div>

    </div>
</div>