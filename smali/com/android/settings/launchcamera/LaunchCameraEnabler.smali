.class public Lcom/android/settings/launchcamera/LaunchCameraEnabler;
.super Landroid/preference/PreferenceActivity;
.source "LaunchCameraEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private mFactoryContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;

.field private mValueCameraAutoStartKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mSwitch:Landroid/widget/Switch;

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.factory"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mFactoryContext:Landroid/content/Context;

    .line 27
    iget-object v1, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mFactoryContext:Landroid/content/Context;

    const-string v2, "di_test_prefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mPrefs:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "LaunchCameraEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageManager.NameNotFoundException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 65
    const-string v0, "LaunchCameraEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->editor:Landroid/content/SharedPreferences$Editor;

    .line 68
    if-eqz p2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "camera_auto_start_key"

    const-string v2, "ON"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 76
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "camera_auto_start_key"

    const-string v2, "OFF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 34
    const-string v0, "LaunchCameraEnabler"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "camera_auto_start_key"

    const-string v2, "ON"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mValueCameraAutoStartKey:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mValueCameraAutoStartKey:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 47
    const-string v0, "LaunchCameraEnabler"

    const-string v1, "setSwitch"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mSwitch:Landroid/widget/Switch;

    .line 54
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "camera_auto_start_key"

    const-string v2, "ON"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mValueCameraAutoStartKey:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mValueCameraAutoStartKey:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
