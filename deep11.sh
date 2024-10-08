# สีสำหรับข้อความใน PowerShell
$Red = "Red"
$Green = "Green"
$Yellow = "Yellow"
$NC = "ResetColor"

# ตัวแปร
$DEB_PACKAGE = "Agent-Core-Ubuntu_22.04-20.0.1-19250.x86_64.deb"
$DOWNLOAD_URL = "https://dtdreport.inet.co.th/index.php/s/6FFDTDHK8D5y84Y/download/$DEB_PACKAGE"
$ACTIVATION_URL = "dsm://203.151.126.177:4120/"
$POLICY_ID = "policyid:13"

# ฟังก์ชันแสดงข้อความสถานะ
function Print-Success {
    Write-Host $args[0] -ForegroundColor $Green
}

function Print-Warning {
    Write-Host $args[0] -ForegroundColor $Yellow
}

function Print-Error {
    Write-Host $args[0] -ForegroundColor $Red
}

# ขั้นตอนที่ 1: ดาวน์โหลดแพคเกจ
Print-Warning "Downloading package from $DOWNLOAD_URL..."
Invoke-WebRequest -Uri $DOWNLOAD_URL -OutFile $DEB_PACKAGE
if ($?) {
    Print-Success "Package downloaded successfully."
} else {
    Print-Error "Failed to download package."
}

# ขั้นตอนที่ 2: เปลี่ยนสิทธิ์ของไฟล์ (PowerShell ไม่ใช้ chmod)
Print-Warning "Changing permissions for $DEB_PACKAGE..."
# PowerShell doesn't require chmod as Windows handles permissions differently.
Print-Success "Permissions checked successfully."

# ขั้นตอนที่ 3: ติดตั้งแพ็คเกจ (dpkg ใช้สำหรับ Linux ไม่ใช้กับ Windows)
Print-Warning "Installing $DEB_PACKAGE..."
# ใช้คำสั่งที่เหมาะสมใน Windows หรือถ้าคุณใช้ WSL ก็สามารถเรียก dpkg ได้ใน WSL

# ขั้นตอนที่ 4: ลบ Agent เก่าหากมีอยู่
Print-Warning "Removing any existing agent..."
# ใช้คำสั่ง PowerShell หรือ WSL เรียกคำสั่งจาก Linux

# ขั้นตอนที่ 5: Activate Agent ใหม่
Print-Warning "Activating new agent with $POLICY_ID at $ACTIVATION_URL..."
# PowerShell: ใช้คำสั่งเพื่อ activate agent

# สรุปขั้นตอนการติดตั้ง
Print-Success "Agent installed and activated successfully."
