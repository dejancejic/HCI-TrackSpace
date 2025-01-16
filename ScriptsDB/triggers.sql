delimiter $$
create trigger increment_club_competitors_trigger after insert on competitor
for each row
begin
	declare numberComp int;
    select competitorNumber into numberComp from club where idClub=new.idClub;
    update club set competitorNumber=numberComp+1 where idClub=new.idClub;
end$$
delimiter ;


delimiter $$
create trigger decrement_club_competitors_trigger after delete on competitor
for each row
begin
declare numberComp int;
    select competitorNumber into numberComp from club where idClub=old.idClub;
    update club set competitorNumber=numberComp-1 where idClub=old.idClub;
end$$
delimiter ;


delimiter $$
create trigger increment_group_count_trigger after insert on trackspace.group
for each row
begin
declare numberGroups int;
    select groupNumber into numberGroups from running_event where idEvent=new.idEvent;
    update running_event set groupNumber=numberGroups+1 where idEvent=new.idEvent;
end$$
delimiter ;

delimiter $$
create trigger decrement_group_count_trigger after delete on trackspace.group
for each row
begin
declare numberGroups int;
    select groupNumber into numberGroups from running_event where idEvent=old.idEvent;
    update running_event set groupNumber=numberGroups-1 where idEvent=old.idEvent;
end$$
delimiter ;

