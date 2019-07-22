import subprocess
import os
import sys


# name of the main latex .tex file without extension
mainfilename = 'oral_presentation'


open_pdf = True

# binary to a pdf reader
pdfreader = 'C:\Program Files (x86)\SumatraPDF\SumatraPDF.exe'



# argument parsing
if 'quick' in sys.argv:
    quick = True
else:
    quick = False
    
# argument parsing
if 'clean' in sys.argv:
    clean = True
else:
    clean = False
    

    
    
if not quick or clean:
    # remove files which might mess with the build
    for ext in ['.aux','.bbl','.blg','.glo','.gls','.ilg','.ist','.log','.out','.nlo','.nls','.out','.spl','.toc','.synctex.gz','.run.xml','.nav','.bcf','.snm','-blx.bib']:
        try:
            os.remove('{}{}'.format(mainfilename,ext))
        except:
            pass
           
           
            
# run commands
try:
    if not clean:
        with open('build.log','w') as f:
            print('### LATEX ###')
            cmd = ['pdflatex', '-interaction=nonstopmode', '-synctex=1', '-shell-escape','{}'.format(mainfilename)]
            print('running {}'.format(' '.join(cmd)))
            subprocess.call(cmd,stdout=f)
        
        if not quick:
            print('### BIBER ###')
            cmd = ['biber','{}'.format(mainfilename)]
            print('running {}'.format(' '.join(cmd)))
            subprocess.call(cmd)
            
            print('### LATEX ###')
            with open('build.log','w') as f:
                cmd = ['pdflatex', '-interaction=nonstopmode', '-synctex=1', '-shell-escape','{}'.format(mainfilename)]
                print('running {}'.format(' '.join(cmd)))
                subprocess.call(cmd,stdout=f)
            
            print('### LATEX ###')
            with open('build.log','w') as f:
                cmd = ['pdflatex', '-interaction=nonstopmode', '-synctex=1', '-shell-escape','{}'.format(mainfilename)]
                print('running {}'.format(' '.join(cmd)))
                subprocess.call(cmd,stdout=f)
            
except:
    pass
    
else:
    if not clean and open_pdf:
        subprocess.call([pdfreader,"{}.pdf".format(mainfilename)] )


# print error log messages   
lines = []
with open('build.log','r') as f:
    for l in f:
        lines.append(l)
    
errors = []
for i,l in enumerate(lines):
    if l.startswith('!'):
        errors.append(l)
        try:
            errors.append(lines[i+1])
        except:
            pass
        
if len(errors)>0:
    print('')
    print('*'*80)
    print('Latex Errors:')
    for e in errors:
        print(e)

