.class public Lcom/android/settings/DualSoundRingtoneSettings;
.super Landroid/preference/PreferenceActivity;
.source "DualSoundRingtoneSettings.java"


# instance fields
.field private mActivePhone:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mRingtone2Preference:Landroid/preference/Preference;

.field private mRingtoneNotificationRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private ringtone:Lcom/android/settings/DefaultRingtonePreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    new-instance v0, Lcom/android/settings/DualSoundRingtoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DualSoundRingtoneSettings$1;-><init>(Lcom/android/settings/DualSoundRingtoneSettings;)V

    iput-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private UpdateRingtoneNotificationNames()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DualSoundRingtoneSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/preference/Preference;
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 318
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 319
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 321
    :cond_0
    return-void
.end method

.method private updateRingtoneData(I)V
    .locals 3
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v2, 0x1

    .line 324
    if-ne p1, v2, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v2, v0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 331
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "msg"    # I

    .prologue
    .line 177
    if-nez p2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    move-object v6, p0

    .line 184
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 187
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 188
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10405f0

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 191
    const v0, 0x10405ee

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 195
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Lcom/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 197
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 201
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateState(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 241
    .local v0, "ringerMode":I
    if-eqz p1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 243
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getmActivePhone()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "pickedUri"    # Landroid/net/Uri;
    .param p2, "ringtoneType"    # I

    .prologue
    .line 285
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    const-string v2, "DualSoundRingtoneSettings"

    const-string v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneData(I)V

    .line 302
    return-void

    .line 289
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    const-string v2, "DualSoundRingtoneSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked - pickedUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "DualSoundRingtoneSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked(IllegalArgumentException): pickedUri is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const v2, 0x7f0904cb

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 254
    packed-switch p1, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 257
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 258
    .local v0, "pickedUri":Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 263
    .end local v0    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 264
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 265
    .restart local v0    # "pickedUri":Landroid/net/Uri;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "sim Id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "sim Id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    .line 112
    const-string v2, "DualSoundRingtoneSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActivePhone : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    const-string v2, "sound title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sound title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    const v2, 0x7f070037

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->addPreferencesFromResource(I)V

    .line 122
    const-string v2, "ringtone"

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->ringtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 123
    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->ringtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObjectDual(Lcom/android/settings/DualSoundRingtoneSettings;)V

    .line 126
    const-string v2, "ringtone"

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 127
    const-string v2, "ringtone2"

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    .line 128
    const-string v2, "notification_sound"

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 130
    invoke-direct {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->configureActionBar()V

    .line 132
    new-instance v2, Lcom/android/settings/DualSoundRingtoneSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DualSoundRingtoneSettings$2;-><init>(Lcom/android/settings/DualSoundRingtoneSettings;)V

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    .line 173
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 306
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 308
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->finish()V

    .line 309
    const/4 v0, 0x1

    return v0

    .line 306
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v2, 0x1

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 276
    if-ne p1, v2, :cond_0

    .line 277
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 235
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DualSoundRingtoneSettings;->updateState(Z)V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->UpdateRingtoneNotificationNames()V

    .line 224
    return-void
.end method
