<?php

use SilverStripe\i18n\i18n;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\View\Requirements;
use SilverStripe\ORM\Search\FulltextSearchable;
use SilverStripe\Core\Config\Config;
use SilverStripe\Control\Director;
use SilverStripe\Security\MemberAuthenticator\MemberAuthenticator;
use SilverStripe\Security\Authenticator;
use SilverStripe\Security\PasswordValidator;
use SilverStripe\Security\Member;
use SilverStripe\Admin\LeftAndMain;
use SilverStripe\Forms\HTMLEditor\HtmlEditorConfig;

// remove PasswordValidator for SilverStripe 5.0
$validator = new PasswordValidator();

$validator->minLength(8);
$validator->checkHistoricalPasswords(6);
Member::set_password_validator($validator);

HtmlEditorConfig::get('cms')->setOption(
    'extended_valid_elements',
    'img[class|src|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name|usemap],' .
    'iframe[src|name|width|height|title|align|allowfullscreen|frameborder|marginwidth|marginheight|scrolling],' .
    'object[classid|codebase|width|height|data|type],' .
    'embed[src|type|pluginspage|width|height|autoplay],' .
    'param[name|value],' .
    'map[class|name|id],' .
    'area[shape|coords|href|target|alt],' .
    'ol[start|type]'
);