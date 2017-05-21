.class final Lcom/android/settings/bluetooth/HidProfile;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/HidProfile$1;,
        Lcom/android/settings/bluetooth/HidProfile$InputDeviceServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/HidProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/android/settings/bluetooth/HidProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 102
    iput-object p3, p0, Lcom/android/settings/bluetooth/HidProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 103
    iput-object p4, p0, Lcom/android/settings/bluetooth/HidProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 104
    new-instance v0, Lcom/android/settings/bluetooth/HidProfile$InputDeviceServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/HidProfile$InputDeviceServiceListener;-><init>(Lcom/android/settings/bluetooth/HidProfile;Lcom/android/settings/bluetooth/HidProfile$1;)V

    const/4 v1, 0x4

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 106
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/settings/bluetooth/HidProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HidProfile;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/HidProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/HidProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothInputDevice;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HidProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/HidProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HidProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/HidProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/HidProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/HidProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/HidProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/HidProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/HidProfile;->mIsProfileReady:Z

    return p1
.end method

.method static getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I
    .locals 3
    .param p0, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    const v0, 0x7f020172

    .line 195
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v1

    const/16 v2, 0x540

    if-ne v1, v2, :cond_1

    .line 196
    const v0, 0x7f020173

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v1

    const/16 v2, 0x5c0

    if-ne v1, v2, :cond_2

    .line 198
    const v0, 0x7f020175

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v1

    const/16 v2, 0x580

    if-ne v1, v2, :cond_3

    .line 200
    const v0, 0x7f02017e

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorSubClass()I

    move-result v1

    const/16 v2, 0x504

    if-eq v1, v2, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorSubClass()I

    move-result v1

    const/16 v2, 0x508

    if-eq v1, v2, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorSubClass()I

    move-result v1

    const/16 v2, 0x50c

    if-eq v1, v2, :cond_0

    .line 208
    const v0, 0x7f02016e

    goto :goto_0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    const v0, 0x7f02016e

    .line 190
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    goto :goto_0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 164
    const v0, 0x7f090228

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x3

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const v1, 0x7f090243

    .line 169
    iget-object v2, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v2, :cond_0

    .line 182
    :goto_0
    :pswitch_0
    return v1

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 174
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 182
    :pswitch_1
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    goto :goto_0

    .line 179
    :pswitch_2
    const v1, 0x7f09023d

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    const/16 v1, 0x64

    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    if-eqz p2, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "HID"

    return-object v0
.end method
