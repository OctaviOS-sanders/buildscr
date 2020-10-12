echo "// adding temp sepolicy //"
sleep 1
cd system/sepolicy
git fetch https://github.com/OctaviOS-sanders/platform_system_sepolicy 11
git cherry-pick 8ae2b97ed235424f68bd28cb9935603456fcc66b
cd ../..
echo " "
echo " "
sleep 1

echo "// custom build date //"
sleep 1
cd vendor/octavi
git fetch https://github.com/OctaviOS-sanders/vendor_octavi
git cherry-pick 1729bd5918bb600b6b2c84954980e8c09c65f0d6
cd ../..
echo " "
echo " "
sleep 1

echo "// replacing wlan hal //"
sleep 1
rm -rf hardware/qcom-caf/wlan
git clone https://github.com/OctaviOS-sanders/platform_hardware_qcom-caf_wlan -b 11 hardware/qcom-caf/wlan
echo " "
echo " "
sleep 1

echo "// adding mkbootimg commit //"
sleep 1
cd system/tools/mkbootimg
git fetch https://github.com/OctaviOS-sanders/platform_system_tools_mkbootimg 11
git cherry-pick 0062f61c2466913b66cb531791dde9d1d636be6f
cd ../../..
echo " "
echo " "
sleep 1

echo "// adding build/make commit //"
sleep 1
cd build/make
git fetch https://github.com/OctaviOS-sanders/platform_build_make 11
git cherry-pick 121fe5d7240e60a8d73f3e76e6c29695cf2dbe08^..f5665e2b2b52ca1ddff03a3682d48bf42352de8a
cd ../..
echo " "
echo " "
sleep 1

echo "// replacing display hal //"
sleep 1
rm -rf hardware/qcom-caf/msm8996/display
git clone https://github.com/OctaviOS-sanders/platform_hardware_qcom-caf_msm8996_display -b 11 hardware/qcom-caf/msm8996/display
echo " "
echo " "
sleep 1
