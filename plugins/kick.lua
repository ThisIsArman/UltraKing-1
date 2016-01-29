local function run(msg, matches)
   if not is_sudo(msg) then
    return nil
  end
   local user = 'user#id'..matches[1]
   local chat = 'channel#id'..msg.to.id
  
  if msg.to.type == 'channel' then
     print('kicked')
    channel_kick(chat, user, ok_cb, false)
   else
 return nil
   end  
 end
 
 return {
  patterns = {
    "^!kick +(.+)$"
  }, 
  run = run 
}
