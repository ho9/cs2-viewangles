@echo off & chcp 65001 >nul & mode 80,25 & title precache.t.me & cls & color 0f
set user=exploit
set /a password=%random%
net session >nul 2>&1
if %errorlevel% == 0 (echo Press "E" to enable or "D" to disable.) else (echo Run the script as Administrator to continue. & pause >nul & exit)
choice /n /c ed /m "> "
if %errorlevel% == 1 goto enable
if %errorlevel% == 2 goto disable
echo Wrong input. & pause >nul & exit

:enable
(for /f "usebackq tokens=1,2,*" %%a in (`reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Valve\Steam" /v InstallPath`) do set steampath=%%c)>nul 2>&1
(for /f "usebackq tokens=1,2,*" %%a in (`reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Valve\cs2" /v installpath`) do set cs2path=%%c\game\csgo)>nul 2>&1
echo log_flags LOADING +DoNotEcho;log_flags General +DoNotEcho;log_flags Assert +DoNotEcho;log_flags Console +DoNotEcho;log_flags Developer +DoNotEcho;log_flags DeveloperConsole +DoNotEcho;log_flags DeveloperVerbose +DoNotEcho;log_flags Symbols +DoNotEcho;log_flags ToolsStallMonitor +DoNotEcho;log_flags Stack +DoNotEcho;log_flags EntityLoadUnserialize +DoNotEcho;log_flags EntitySystem +DoNotEcho;log_flags VScript +DoNotEcho;log_flags VScriptDbg +DoNotEcho;log_flags Demo +DoNotEcho;log_flags InstantReplay +DoNotEcho;log_flags RCon +DoNotEcho;log_flags Steam +DoNotEcho;log_flags ClockDrift +DoNotEcho;log_flags Shooting +DoNotEcho;log_flags Server +DoNotEcho;log_flags SpawnGroup +DoNotEcho;log_flags SignonState +DoNotEcho;log_flags Movie +DoNotEcho;log_flags ServerLog +DoNotEcho;log_flags stringtables +DoNotEcho;log_flags HLTVBroadcast +DoNotEcho;log_flags HLTVServer +DoNotEcho;log_flags VR +DoNotEcho;log_flags InputService +DoNotEcho;log_flags NetworkClientService +DoNotEcho;log_flags NetworkP2PService +DoNotEcho;log_flags NetworkServerService +DoNotEcho;log_flags NetworkService +DoNotEcho;log_flags RenderService +DoNotEcho;log_flags ScreenShot +DoNotEcho;log_flags SplitScreen +DoNotEcho;log_flags VProf +DoNotEcho;log_flags BitBufError +DoNotEcho;log_flags Client +DoNotEcho;log_flags CommandLine +DoNotEcho;log_flags EngineServiceManager +DoNotEcho;log_flags GameEventSystem +DoNotEcho;log_flags HostStateManager +DoNotEcho;log_flags Filesystem +DoNotEcho;log_flags InputSystem +DoNotEcho;log_flags IME +DoNotEcho;log_flags LocalizationSystem +DoNotEcho;log_flags D3D +DoNotEcho;log_flags RenderSystem +DoNotEcho;log_flags ResourceSystem +DoNotEcho;log_flags SchemaSystem +DoNotEcho;log_flags TypeManager +DoNotEcho;log_flags Vfx +DoNotEcho;log_flags MaterialSystem +DoNotEcho;log_flags PostProcessing +DoNotEcho;log_flags modellib +DoNotEcho;log_flags Physics +DoNotEcho;log_flags MeshSystem +DoNotEcho;log_flags WorldRenderer +DoNotEcho;log_flags Pulse +DoNotEcho;log_flags PulseV8 +DoNotEcho;log_flags Networking +DoNotEcho;log_flags NetworkingReliable +DoNotEcho;log_flags NetSteamConn +DoNotEcho;log_flags SteamNetSockets +DoNotEcho;log_flags AnimationGraph +DoNotEcho;log_flags BoneSetup +DoNotEcho;log_flags AnimationSystemIK +DoNotEcho;log_flags AnimationSystem +DoNotEcho;log_flags AnimResource +DoNotEcho;log_flags Interpolation +DoNotEcho;log_flags DualHull +DoNotEcho;log_flags SoundSystemLowLevel +DoNotEcho;log_flags SoundOperatorSystem +DoNotEcho;log_flags SoundSystem +DoNotEcho;log_flags SndOperators +DoNotEcho;log_flags SteamAudio +DoNotEcho;log_flags LIGHTBINNER +DoNotEcho;log_flags SceneSystem +DoNotEcho;log_flags CharacterDecalSystem +DoNotEcho;log_flags ToneMapping +DoNotEcho;log_flags VolumetricFog +DoNotEcho;log_flags ParticlesLib +DoNotEcho;log_flags Particles +DoNotEcho;log_flags PanoramaVideoPlayer +DoNotEcho;log_flags PanoramaContent +DoNotEcho;log_flags VNotify +DoNotEcho;log_flags Panorama +DoNotEcho;log_flags PanoramaScript +DoNotEcho;log_flags Workshop +DoNotEcho;log_flags SoundOpGameSystem +DoNotEcho;log_flags VScriptScripts +DoNotEcho;log_flags SaveRestore +DoNotEcho;log_flags SaveRestoreSyncIO +DoNotEcho;log_flags Elapsed +DoNotEcho;log_flags SaveRestoreIO +DoNotEcho;log_flags SaveRestoreIOFiltered +DoNotEcho;log_flags ClientMessages +DoNotEcho;log_flags GlobalState +DoNotEcho;log_flags WebApi +DoNotEcho;log_flags HltvDirector +DoNotEcho;log_flags CommandQueue +DoNotEcho;log_flags CommandQueueEvents +DoNotEcho;log_flags CommandQueueSAMPLES +DoNotEcho;log_flags ScenePrint +DoNotEcho;log_flags EmitSound +DoNotEcho;log_flags SndEmitterSystem +DoNotEcho;log_flags Wearable +DoNotEcho;log_flags SteamUnifiedMessages +DoNotEcho;log_flags GCClient +DoNotEcho;log_flags SOCache +DoNotEcho;log_flags NavMesh +DoNotEcho;log_flags RESPONSE_RULES +DoNotEcho;log_flags BuildCubemaps +DoNotEcho;log_flags EntityDump +DoNotEcho;log_flags UserMessages +DoNotEcho;log_flags Decals +DoNotEcho;log_flags Prediction +DoNotEcho;log_flags SubtitlesandCaptions +DoNotEcho;log_flags ConfigImport +DoNotEcho;log_flags CsIconGenerator +DoNotEcho;log_flags UIMapPreviews +DoNotEcho;log_flags CSGOgameinstructor +DoNotEcho;log_flags Matchmaking +DoNotEcho;log_flags RenderPipelineCsgo +DoNotEcho;log_flags RenderPipelineCsgoPostHud +DoNotEcho;log_flags Host +DoNotEcho;log_flags RESPONSEDOC_LIB +DoNotEcho;log_flags SceneFileCache +DoNotEcho;log_flags CSGO_MainMenu +DoNotEcho;cl_track_render_eye_angles 1;clear; >"%cs2path%\cfg\viewangles.cfg"
echo log_flags LOADING -DoNotEcho;log_flags General -DoNotEcho;log_flags Assert -DoNotEcho;log_flags Console -DoNotEcho;log_flags Developer -DoNotEcho;log_flags DeveloperConsole -DoNotEcho;log_flags DeveloperVerbose -DoNotEcho;log_flags Symbols -DoNotEcho;log_flags ToolsStallMonitor -DoNotEcho;log_flags Stack -DoNotEcho;log_flags EntityLoadUnserialize -DoNotEcho;log_flags EntitySystem -DoNotEcho;log_flags VScript -DoNotEcho;log_flags VScriptDbg -DoNotEcho;log_flags Demo -DoNotEcho;log_flags InstantReplay -DoNotEcho;log_flags RCon -DoNotEcho;log_flags Steam -DoNotEcho;log_flags ClockDrift -DoNotEcho;log_flags Shooting -DoNotEcho;log_flags Server -DoNotEcho;log_flags SpawnGroup -DoNotEcho;log_flags SignonState -DoNotEcho;log_flags Movie -DoNotEcho;log_flags ServerLog -DoNotEcho;log_flags stringtables -DoNotEcho;log_flags HLTVBroadcast -DoNotEcho;log_flags HLTVServer -DoNotEcho;log_flags VR -DoNotEcho;log_flags InputService -DoNotEcho;log_flags NetworkClientService -DoNotEcho;log_flags NetworkP2PService -DoNotEcho;log_flags NetworkServerService -DoNotEcho;log_flags NetworkService -DoNotEcho;log_flags RenderService -DoNotEcho;log_flags ScreenShot -DoNotEcho;log_flags SplitScreen -DoNotEcho;log_flags VProf -DoNotEcho;log_flags BitBufError -DoNotEcho;log_flags Client -DoNotEcho;log_flags CommandLine -DoNotEcho;log_flags EngineServiceManager -DoNotEcho;log_flags GameEventSystem -DoNotEcho;log_flags HostStateManager -DoNotEcho;log_flags Filesystem -DoNotEcho;log_flags InputSystem -DoNotEcho;log_flags IME -DoNotEcho;log_flags LocalizationSystem -DoNotEcho;log_flags D3D -DoNotEcho;log_flags RenderSystem -DoNotEcho;log_flags ResourceSystem -DoNotEcho;log_flags SchemaSystem -DoNotEcho;log_flags TypeManager -DoNotEcho;log_flags Vfx -DoNotEcho;log_flags MaterialSystem -DoNotEcho;log_flags PostProcessing -DoNotEcho;log_flags modellib -DoNotEcho;log_flags Physics -DoNotEcho;log_flags MeshSystem -DoNotEcho;log_flags WorldRenderer -DoNotEcho;log_flags Pulse -DoNotEcho;log_flags PulseV8 -DoNotEcho;log_flags Networking -DoNotEcho;log_flags NetworkingReliable -DoNotEcho;log_flags NetSteamConn -DoNotEcho;log_flags SteamNetSockets -DoNotEcho;log_flags AnimationGraph -DoNotEcho;log_flags BoneSetup -DoNotEcho;log_flags AnimationSystemIK -DoNotEcho;log_flags AnimationSystem -DoNotEcho;log_flags AnimResource -DoNotEcho;log_flags Interpolation -DoNotEcho;log_flags DualHull -DoNotEcho;log_flags SoundSystemLowLevel -DoNotEcho;log_flags SoundOperatorSystem -DoNotEcho;log_flags SoundSystem -DoNotEcho;log_flags SndOperators -DoNotEcho;log_flags SteamAudio -DoNotEcho;log_flags LIGHTBINNER -DoNotEcho;log_flags SceneSystem -DoNotEcho;log_flags CharacterDecalSystem -DoNotEcho;log_flags ToneMapping -DoNotEcho;log_flags VolumetricFog -DoNotEcho;log_flags ParticlesLib -DoNotEcho;log_flags Particles -DoNotEcho;log_flags PanoramaVideoPlayer -DoNotEcho;log_flags PanoramaContent -DoNotEcho;log_flags VNotify -DoNotEcho;log_flags Panorama -DoNotEcho;log_flags PanoramaScript -DoNotEcho;log_flags Workshop -DoNotEcho;log_flags SoundOpGameSystem -DoNotEcho;log_flags VScriptScripts -DoNotEcho;log_flags SaveRestore -DoNotEcho;log_flags SaveRestoreSyncIO -DoNotEcho;log_flags Elapsed -DoNotEcho;log_flags SaveRestoreIO -DoNotEcho;log_flags SaveRestoreIOFiltered -DoNotEcho;log_flags ClientMessages -DoNotEcho;log_flags GlobalState -DoNotEcho;log_flags WebApi -DoNotEcho;log_flags HltvDirector -DoNotEcho;log_flags CommandQueue -DoNotEcho;log_flags CommandQueueEvents -DoNotEcho;log_flags CommandQueueSAMPLES -DoNotEcho;log_flags ScenePrint -DoNotEcho;log_flags EmitSound -DoNotEcho;log_flags SndEmitterSystem -DoNotEcho;log_flags Wearable -DoNotEcho;log_flags SteamUnifiedMessages -DoNotEcho;log_flags GCClient -DoNotEcho;log_flags SOCache -DoNotEcho;log_flags NavMesh -DoNotEcho;log_flags RESPONSE_RULES -DoNotEcho;log_flags BuildCubemaps -DoNotEcho;log_flags EntityDump -DoNotEcho;log_flags UserMessages -DoNotEcho;log_flags Decals -DoNotEcho;log_flags Prediction -DoNotEcho;log_flags SubtitlesandCaptions -DoNotEcho;log_flags ConfigImport -DoNotEcho;log_flags CsIconGenerator -DoNotEcho;log_flags UIMapPreviews -DoNotEcho;log_flags CSGOgameinstructor -DoNotEcho;log_flags Matchmaking -DoNotEcho;log_flags RenderPipelineCsgo -DoNotEcho;log_flags RenderPipelineCsgoPostHud -DoNotEcho;log_flags Host -DoNotEcho;log_flags RESPONSEDOC_LIB -DoNotEcho;log_flags SceneFileCache -DoNotEcho;log_flags CSGO_MainMenu -DoNotEcho;cl_track_render_eye_angles 0;clear; >"%cs2path%\cfg\reset.cfg"
net user "%user%" "%password%" /add /y >nul 2>&1
net share %user%="%cs2path%" /grant:%user%,read /users:2 /y >nul 2>&1
for /f "tokens=2 delims=:" %%x in ('ipconfig ^| findstr /C:"IPv4 Address"') do (if not defined ip set "ip=%%x")
echo Server:%ip%
echo Username: %user%
echo Password: %password%
echo.
echo Press any key to launch cs2 and close this script.
pause >nul
"%steampath%\steam.exe" -applaunch 730 -condebug -conclearlog +exec viewangles & exit

:disable
net share "%user%" /delete /y >nul 2>&1
net user "%user%" /delete /y >nul 2>&1
echo Successfully disabled the transfer. Closing in 3 seconds...
timeout /t 3 /nobreak >nul & exit