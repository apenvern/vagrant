# Vagrant Box for EmberJS

To start and provision the vm

``` 
# In dos commande line
git clone https://github.com/apenvern/vagrant.git
cd vagrant\vagrant-emberjs
vagrant up
```

To map the smb share directory

```
# In dos commande line
net use X: \\192.168.56.106\ember-workspace vagrant /user:vagrant
```

To test your application
```
# In commande line with ssh in path (like cigwin)
cd <path>\vagrant\vagrant-emberjs
vagrant ssh
cd /workspace/
git clone <your-app>
cd <your-app>
npm i 
bower i
ember s
```

## Test Windows vs Unix

For this test I use an Ember.js sample application : https://github.com/balinterdi/rarwe-demo (Thank You to Balint Erdi)

| Condition  | "ember s" time to start  |
|---|---|
| Unix Vagrant BOX  | 2596ms |
| Windows  | 27410ms  |
| Windows with ember windows addon |  24808ms |


### Test Unix

```
# In commande line with ssh in path (like cigwin)
cd <path>\vagrant\vagrant-emberjs
vagrant ssh
cd /workspace/
git clone https://github.com/balinterdi/rarwe-demo.git
cd rarwe-demo
npm i 
bower i
ember s

version: 2.3.0
Livereload server on http://localhost:49152
Serving on http://localhost:4200/

Build successful - 2596ms.

Slowest Trees                                 | Total
----------------------------------------------+---------------------
Babel                                         | 317ms
Babel                                         | 294ms
SourceMapConcat: Concat: Vendor               | 264ms
SourceMapConcat: Concat: Addon JS             | 144ms

Slowest Trees (cumulative)                    | Total (avg)
----------------------------------------------+---------------------
Babel (20)                                    | 1031ms (51 ms)
SourceMapConcat: Concat: Vendor (1)           | 264ms
SourceMapConcat: Concat: Addon JS (1)         | 144ms
Funnel: Addon JS (15)                         | 130ms (8 ms)

```


### Test Windows

```
# In dos commande line (As administrator)
cd D:\tmp\
git clone https://github.com/balinterdi/rarwe-demo.git
cd rarwe-demo
npm i
bower i

# Start the application
ember s

version: 2.3.0
Livereload server on http://localhost:49152
Serving on http://localhost:4200/

Build successful - 27410ms.

Slowest Trees                                 | Total
----------------------------------------------+---------------------
Babel                                         | 5837ms
SourceMapConcat: Concat: Addon JS             | 4748ms
Babel                                         | 4407ms

Slowest Trees (cumulative)                    | Total (avg)
----------------------------------------------+---------------------
Babel (20)                                    | 14865ms (743 ms)
SourceMapConcat: Concat: Addon JS (1)         | 4748ms
Funnel: Addon JS (15)                         | 1583ms (105 ms)

```


### Test Windows with ember windows addon

```
# In dos commande line (As administrator)
cd D:\tmp\
git clone https://github.com/balinterdi/rarwe-demo.git
cd rarwe-demo
npm i
bower i

# Install ember-cli-windows-addon
npm install --save-dev ember-cli-windows-addon
npm i
ember windows

# Start the application
ember s
version: 2.3.0
Livereload server on http://localhost:49152
Serving on http://localhost:4200/

Build successful - 24808ms.

Slowest Trees                                 | Total
----------------------------------------------+---------------------
Babel                                         | 5341ms
SourceMapConcat: Concat: Addon JS             | 4165ms
Babel                                         | 3884ms
Babel                                         | 1321ms
SourceMapConcat: Concat: App                  | 1242ms

Slowest Trees (cumulative)                    | Total (avg)
----------------------------------------------+---------------------
Babel (20)                                    | 13821ms (691 ms)
SourceMapConcat: Concat: Addon JS (1)         | 4165ms
SourceMapConcat: Concat: App (1)              | 1242ms
Funnel: Addon JS (15)                         | 1241ms (82 ms)

```
