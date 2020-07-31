<?php
class customTvssComboGetgetmseiProfileProcessor extends modObjectGetListProcessor
{
    public $classKey = 'MsiePresetsFields';
    //public $languageTopics = array('resource');
    public $defaultSortField = 'id';
    public $defaultSortDirection = 'ASC';

    /**
     * @param xPDOQuery $c
     *
     * @return xPDOQuery
     */
    public function prepareQueryBeforeCount(xPDOQuery $c)
    {

        if ($query = trim($this->getProperty('query'))) {
            $c->where(array(
                'id:LIKE' => "{$query}%",
                'OR:name:LIKE' => "%{$query}%"
            ));
        }

        return $c;
    }

    /**
     * @param xPDOObject $obj
     *
     * @return array
     */
    public function prepareRow(xPDOObject $obj)
    {
        $array = $obj->toArray();


        $data = array(
            'display' => "<div><small>({$array['id']})</small> <b>{$array['name']}</b></div>",
            'value' => $array['id'],
        );


        return $data;
    }
}

return 'customTvssComboGetgetmseiProfileProcessor';
