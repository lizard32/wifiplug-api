require 'java'
import 'java.io.IOException'
import 'java.io.InputStream'
import 'java.io.OutputStream'
import 'java.io.PrintStream'
import 'java.io.FileOutputStream'
import 'java.net.Socket'
import 'java.net.UnknownHostException'
import 'java.util.LinkedList'
import 'java.util.List'
import 'java.lang.System'

# Import the java classes
require 'bin/classes.jar'
import 'com.cdy.protocol.ClientCMDHelper'
import 'com.cdy.protocol.cmd.ClientCommand'
import 'com.cdy.protocol.cmd.ServerCommand'
import 'com.cdy.protocol.cmd.client.CMD00_ConnectRequet' #sic
import 'com.cdy.protocol.cmd.client.CMD02_Login'
import 'com.cdy.protocol.cmd.client.CMD04_GetAllDeviceList'
import 'com.cdy.protocol.cmd.client.CMD08_ControlDevice'
import 'com.cdy.protocol.cmd.client.CMD53_JumpSucc'
import 'com.cdy.protocol.cmd.client.CMDFC_IdleSucc'
import 'com.cdy.protocol.cmd.server.CMD01_ServerLoginPermit'
import 'com.cdy.protocol.cmd.server.CMD03_ServerLoginRespond'
import 'com.cdy.protocol.cmd.server.CMD05_ServerRespondAllDeviceList'
import 'com.cdy.protocol.cmd.server.CMD52_ServerJump'
import 'com.cdy.protocol.cmd.server.CMDFB_ServerIdle'
import 'com.cdy.protocol.cmd.server.CMDFF_ServerException'
import 'com.cdy.protocol.object.device.Device'
import 'com.cdy.protocol.object.device.DeviceStatus'

# sorry I couldn't let this typo go
CMD00_ConnectRequest = CMD00_ConnectRequet

require 'lib/device_service'
require 'lib/device_api_listener'
require 'lib/write_thread'

service = ObscureChineseWifiDeviceService.new("wifino1.com", 227)
service.connect("zcc", "123")
