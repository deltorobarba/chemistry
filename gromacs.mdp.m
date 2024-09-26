; RUN CONTROL PARAMETERS
integrator               = md        ; leap-frog integrator
nsteps                   = 50000     ; 2 * 50000 = 100 ps
dt                      = 0.002     ; 2 fs

; OUTPUT CONTROL
nstxout                  = 0         ; suppress   
 .trr output 
nstvout                  = 0         ; suppress .trr output
nstenergy                = 5000      ; save energies every 10 ps
nstlog                   = 5000      ; update log file every 10 ps
nstxout-compressed       = 5000      ; save compressed coordinates every 10   
 ps

; NEIGHBORSEARCHING PARAMETERS
cutoff-scheme            = Verlet    ; Buffered neighbor searching
ns_type                  = grid      ; search neighboring grid cells
nstlist                  = 10       ; 20 fs, largely irrelevant with Verlet   

rcoulomb                 = 1.0       ; short-range electrostatic cutoff (in nm)
rvdw                     = 1.0       ; short-range van der Waals cutoff (in nm)

; ELECTROSTATICS   

coulombtype              = PME       ; Particle Mesh Ewald for long-range electrostatics
pme_order                = 4         ; cubic interpolation
fourierspacing           = 0.16      ; grid spacing for FFT

; TEMPERATURE COUPLING
tcoupl                   = V-rescale            ; modified Berendsen thermostat   

tc-grps                  = System   
    ; couple all atoms to the thermostat
tau_t                    = 0.1       ; time constant, in ps
ref_t                    = 300       ; reference temperature, one for each group, in K

; PRESSURE COUPLING
pcoupl                   = Parrinello-Rahman     ; pressure   
 coupling is on 
pcoupltype               = isotropic             ; uniform scaling of box vectors
tau_p                    = 2.0                   ; time constant, in ps
ref_p                    = 1.0                   ; reference pressure, in bar
compressibility          = 4.5e-5              ; isothermal compressibility of water, bar^-1   


; PERIODIC BOUNDARY CONDITIONS
pbc                      = xyz       ; 3-D PBC

; DISPERSION CORRECTION
DispCorr                  = EnerPres  ; account for cut-off vdW scheme

; VELOCITY GENERATION
gen_vel   
                  = no        ; assign velocities from Maxwell distribution   
