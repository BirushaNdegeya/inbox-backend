import express from 'express';

const app = express();

console.log('hel');
console.log('dh');

app.get('/login', function(req,res){
   try {
      res.send('login');
   } catch {
      res.send('error');
   } finally {
      res.send('deconection de serveur');
   }
})
app.use('/', function(req, res){
   res.send('WElcome');
});

app.listen(3000, function(){
   console.log(`server running at http://localhost:3000`);
})