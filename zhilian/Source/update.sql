--initialization;

--create tbl_user;
CREATE TABLE tbl_user(
userid 		varchar(255),
userpassword varchar(30) default '',
phone	 	varchar(30) default '',
email 		varchar(255) default '',
name 		varchar(255) default '',
realName 	varchar(255) default '',
created_at 	integer,
userType 	integer,
group_id 	integer,
grid_id 	varchar(255),
position_id integer default 0,
lastatTime integer default 0,
 role integer default 0,
 is_depa_head integer default 0,
path varchar(255) default '',
thumbnail_profile_image varchar(255) default '',
bmiddle_profile_image varchar(255) default '',
big_profile_image varchar(255) default '',
primary key(userid)
);
--create tbl_user end;
--create users;
CREATE TABLE tbl_people(
people_id           integer default 0,
people_name         varchar(255) default '',
create_at           integer,
sex                 integer default 0,
grid_id             varchar(255),
id_card             varchar(32) default '',
people_type         integer default 0,
birthday            integer default 0 ,
basic_feature       text default '',
real_address        varchar(255) default '',
population_type     integer default 0,
hukou_type          integer default 0,
people_number       varchar(128) default '',
principal           varchar(64) default '',
principal_phone     varchar(64) default '',
economy_situation   varchar(255) default '',
live_situation      varchar(255) default '',
live_type           varchar(255) default '',
body_situation      varchar(255) default '',
deformed_number     varchar(255) default '',
home_tel            varchar(255) default '',
status              integer,
truelng             double,
truelat             double,
alt                 double,
address             varchar(255) default '',
last_check integer default 0,
type_id integer default 0,
add family_members varchar  default '',
add production_situation varchar default '',
add political_outlook varchar  default '',
primary key(people_id)
);
--create users  end;
--create tbl_tasks;
CREATE TABLE tbl_tasks(
taskId 				integer default 0,
form_id             integer default 0,
people_id			integer default 0,
grid_id				varchar(255) default '',
taskName			varchar(255) default '',
group_id 			integer default 0,
content 			varchar(255) default '',
type_id				integer default 0,
user_id				varchar(255) default '',
status	    		integer default 1,
task_level			integer default 0,
end_at				integer,
done_at				integer,
create_at			integer,
create_id			varchar(255) default '',
create_name			varchar(30) default '',
readStatus			integer default 0,
receiveUserID 		varchar(255) default '',
task_type 			integer default 0,
group_name 			varchar(255) default '',
taskorder			varchar(30) default '',
truelng 			double,
truelat 			double,
alt     			double,
address 			varchar(255) default '',
reason 				varchar(255) default '',
rectify_season 		varchar(255) default '',
changeTime 			integer default 0,
assist_user_id 		varchar(255) default '',
assist_user_names 	varchar(255) default 0,
task_submit_history varchar(255) default 0,
examine_stats 		integer default 0,
isMine_sumbit 		integer default 0,
isAssist	 		integer default 0,
remark              varchar(255) default '',
submit_status       integer default 0,
grid_name varchar(25) default '',
object_id integer default 0,
object_type integer default 0,
people_name varchar(255) default 0,
task_handle integer default 1,
add plan_id integer default 0
);

--create tbl_industry_type;
CREATE TABLE tbl_industry_type(
type_id             integer default 0,
type_name           varchar(255) default '',
description         text default '',
status              integer default 0,
primary key(type_id)
);
CREATE TABLE tbl_form(
form_id             integer default 0,
form_name           varchar(255) default '',
type_id             integer default 0,
status              integer default 0,
patrol              varchar(455) default '',
create_at           integer default 0,
description         text default '',
primary key(form_id)
);

CREATE TABLE tbl_item(
item_id             integer default 0,
answer              varchar(255) default '',
question            varchar(455) default '',
type                integer default 0,
status              integer default 0,
classify            varchar(255) default '',
standard_answer     varchar(455) default '',
tag                 integer default 1,
classify_id         integer default 0,
is_field_treatment integer  default 1,
primary key(item_id)
);

--end create tbl_industry_type;
--create tbl_classify;
CREATE TABLE tbl_classify(
classify_id         integer default 0,
classify_name       varchar(255) default '',
status              integer default 0,
remark              text default '',
create_at           integer default 0,
primary key(classify_id)
);
-- end tbl_classify;
--create task_item;
CREATE TABLE tbl_task_item(
task_item_id        integer default 0,
task_id             integer default 0,
question            varchar(255) default '',
answer              varchar(255) default '',
classify_id         integer default 0,
des                 text default '',
tag                 integer default 0,
create_at           integer default 0,
final_result        varchar(255) default '',
is_rectify          integer default 1,
question_type       integer default 1,
local_id varchar(25) default '',
item_id integer default 0 ,
done_at integer,
is_field_treatment integer  default,
options varchar(255) default '',
status integer default 0
);
--create task_item end;
--create attachment;
CREATE TABLE tbl_attachment(
attachment_id   integer default 0,
task_id         integer,
item_id         integer,
attachment_path varchar(255) default '',
path            varchar(255) default '',
attachment_type integer default 1,
annotations     varchar(255) default '',
created_at      integer default 0,
task_item_id    integer,
task_item_local_id varchar(255)
);
--create attachment end;

--create tbl_attachment_signture begin;
CREATE TABLE tbl_attachment_signtrue(
attachment_id   integer default 0,
user_id         varchar(255),
task_id         integer,
attachment_path varchar(255) default '',
path            varchar(255) default '',
attachment_type integer default 1,
annotations     varchar(255),
created_at      integer default 0,
truelng         double,
truelat         double,
alt             double,
address         varchar(255) default '',
is_main         integer,
attachment_name varchar(255) default ''
);
--create tbl_attachment_signture end;


--create tbl_problem begin;
CREATE TABLE tbl_problem(
problem_id      integer default 0,
problem         varchar(255),
des             text default '',
assign_user_id  varchar(255) default '',
user_id         varchar(255) default '',
assign_at       integer default 0,
done_at         integer default 0,
sign_at         integer default 0,
exe_at          integer default 0,
review_status   integer default 1,
review_evidence varchar(255) default '',
review_user_id  varchar(255) default '',
review_at       integer default 0,
reject_reason   varchar(255) default '',
last_reject_reason  varchar(255) default '',
status          integer default 1,
task_id         integer default 0,
task_item_id    integer default 0,
grid_id         varchar(255) default '',
people_id       integer default 0,
group_id        integer default 0,
reason          varchar(255) default '',
handle_result   varchar(255) default '',
plan_id integer default 0,
primary key(problem_id)
);
--create tbl_begin end;
--create tbl_problem_attachment brgin;
CREATE TABLE tbl_problem_attachment(
attachment_id   integer default 0,
problem_id         integer,
attachment_path varchar(255) default '',
path            varchar(255) default '',
attachment_type integer default 1,
annotations     varchar(255) default '',
created_at      integer default 0
);

--create tbl_problem_attachment end;
--create tbl_problem_aigntrue begin;
CREATE TABLE tbl_problem_aigntrue(
attachment_id   integer default 0,
user_id         varchar(255),
problem_id      integer,
attachment_path varchar(255) default '',
path            varchar(255) default '',
attachment_type integer default 1,
annotations     varchar(255),
created_at      integer default 0,
truelng         double,
truelat         double,
alt             double,
address         varchar(255) default '',
is_main         integer,
attachment_name varchar(255) default ''
);
--create tbl_problem_aigntrue end;

--create tbl_bulletin begin;
CREATE TABLE tbl_bulletin(
bulletin_id   integer ,
create_person		varchar(255) default '',
create_person_name		varchar(255) default '',
title               varchar(255) default '',
context 			text default '',
create_at 			integer default 0,
type                integer default 0,
status              intefer default 0,
bulletin_read integer default 0,
primary key(bulletin_id)
);
CREATE TABLE tbl_bulletin_attachment(
attachment_id   integer default 0,
bulletin_id         integer,
attachment_path varchar(255) default '',
attachment_name varchar(255) default '',
path            varchar(255) default '',
attachment_type integer default 1,
annotations     varchar(255) default '',
created_at      integer default 0
);
--create tbl_bulletin end;

--create tbl_group begin;
CREATE TABLE tbl_group(
group_id	integer default 0,
groupName	varchar(30) default '',
userid	varchar(255) default '',
user_type	integer default 0,
members_count	integer default 0,
created_at	long default 0,
change_at	long default 0,
member_type	integer default 0,
parent_id	integer default 0,
group_type	integer default 0,
primary key (group_id)
);

CREATE TABLE tbl_position(
positionid integer,
positionname varchar(255),
rank    integer default 0,
color   varchar(255) default '',
discript text default '',
primary key(positionid)
);
--create tbl_group end;
--create tbl_grid_attachment begin;
CREATE TABLE tbl_grid_attachment(
attachment_id   integer default 0,
grid_id         varchar(255),
attachment_path varchar(255) default '',
attachment_name varchar(255) default '',
path            varchar(255) default '',
attachment_type integer default 1,
annotations     varchar(255) default '',
created_at      integer default 0
);

CREATE TABLE tbl_grid_statistics(
grid_id         integer,
population_type integer default 1,
total      integer default 0
);


--create tbl_plan begins;
CREATE TABLE tbl_plan (
plan_id         integer,
name            varchar(25) DEFAULT '',
content         text DEFAULT '',
begin_at        integer ,
end_at          integer ,
group_id        integer ,
forms           varchar(25) DEFAULT '' ,
industrys       varchar(25) DEFAULT '' ,
grid_id         varchar(255) DEFAULT '',
pid             varchar(255) DEFAULT '',
field           varchar(255) DEFAULT '',
excute_grids    varchar(255) ,
user_id         varchar(255) DEFAULT '',
created_at      integer ,
status          integer  DEFAULT 1,
is_push         integer DEFAULT 0 ,
push_time       integer DEFAULT 0 ,
last_modify_at  integer DEFAULT 0 ,
plan_type integer default 0,
PRIMARY KEY (plan_id)
);
CREATE TABLE tbl_plan_attachment(
attachment_id   integer default 0,
plan_id         integer,
grid_id         varchar(255),
attachment_path varchar(255) default '',
attachment_name varchar(255) default '',
path            varchar(255) default '',
attachment_type integer default 1,
annotations     varchar(255) default '',
created_at      integer default 0
);

--create_tbl_plan ends;


--add  create tbl_people_draft begin ;
CREATE TABLE tbl_people_draft(
people_id           integer default 0,
people_name         varchar(255) default '',
create_at           integer,
sex                 integer default 0,
grid_id             varchar(255),
id_card             varchar(32) default '',
people_type         integer default 0,
birthday            integer default 0 ,
basic_feature       text default '',
real_address        varchar(255) default '',
population_type     integer default 0,
hukou_type          integer default 0,
people_number       varchar(128) default '',
principal           varchar(64) default '',
principal_phone     varchar(64) default '',
economy_situation   varchar(255) default '',
live_situation      varchar(255) default '',
live_type           varchar(255) default '',
body_situation      varchar(255) default '',
deformed_number     varchar(255) default '',
home_tel            varchar(255) default '',
status              integer,
truelng             double,
truelat             double,
alt                 double,
address             varchar(255) default '',
last_check integer default 0,
type_id integer default 0,
family_members varchar  default '',
production_situation varchar default '',
political_outlook varchar  default '',
primary key(people_id)
);
--create tbl_people_draft end;

--recreate tbl_grid colloum pid begin;
DROP TABLE IF EXISTS tbl_grid;
CREATE TABLE tbl_grid(
grid_id varchar(255),
is_examine integer,
pid varchar(255) default '0',
status integer,
field varchar(255) default '',
grid_name varchar(30) default '',
create_at integer,
truelng double,
truelat double,
alt     double,
address varchar(255) default '',
user_upper_bound integer default 0,
remark text default '',
primary key(grid_id)
);
--recreate tbl_grid colloum pid end;


--recreate tbl_blog colloum blog begin;
DROP TABLE IF EXISTS tbl_blog;
CREATE TABLE tbl_blog(
blog_id integer default 0,
plan_id integer default 0,
is_plan integer default 1,
title varchar(255) default '',
content varchar(255) default '',
type integer default 0,
user_id integer default 0,
receive_users text default '',
created_at integer default 0,
truelng double,
truelat double,
address varchar(255) default '',
com_num integer default 0,
grid_id varchar(255) default 0,
user_id varchar(255) default '',
update_at int default 0,
primary key(blog_id)
);
--recreate tbl_blog colloum blog end;

--recreate tbl_blog_attachment colloum tbl_blog_attachment begin;
DROP TABLE IF EXISTS tbl_blog_attachment;
CREATE TABLE tbl_blog_attachment(
attachment_id integer default 0,
store_type integer default 0,
attachment_type integer default 0,
created_at integer default 0,
blog_id integer default 0,
attachment_path varchar(255) default '',
attachment_name varchar(255) default '',
annotations varchar(255) default '',
path varchar(500) default '',
primary key(attachment_id)
);
--recreate tbl_blog_attachment colloum tbl_blog_attachment end;


--recreate tbl_blog_comment colloum tbl_blog_comment begin;
DROP TABLE IF EXISTS tbl_blog_comment;
CREATE TABLE tbl_blog_comment(
comment_id integer default 0,
content varchar(500) default '',
blog_id integer default 0,
receive_user varchar(255) default '',
user_id varchar(255) default '',
created_at integer default 0,
primary key(comment_id)
);
--recreate tbl_blog_comment colloum tbl_blog_comment end;

