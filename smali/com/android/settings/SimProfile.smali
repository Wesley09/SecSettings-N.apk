.class public Lcom/android/settings/SimProfile;
.super Ljava/lang/Object;
.source "SimProfile.java"


# instance fields
.field EMPTY_SIM:I

.field MultiSimIndex:I

.field Slot:I

.field mActivePhone:I

.field mContext:Landroid/content/Context;

.field mDataPrefered:I

.field mVideoCall:I

.field mVoiceCall:I

.field simIcon:I

.field simName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/settings/SimProfile;-><init>(Landroid/content/Context;II)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "Slot"    # I
    .param p3, "MultiSimIndex"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/settings/SimProfile;->EMPTY_SIM:I

    .line 69
    const-string v0, "SimProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MultiSimIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-object p1, p0, Lcom/android/settings/SimProfile;->mContext:Landroid/content/Context;

    .line 71
    iput p2, p0, Lcom/android/settings/SimProfile;->Slot:I

    .line 72
    iput p3, p0, Lcom/android/settings/SimProfile;->MultiSimIndex:I

    .line 74
    if-nez p2, :cond_1

    .line 76
    iput v3, p0, Lcom/android/settings/SimProfile;->simIcon:I

    .line 77
    const-string v0, "SIM 1"

    iput-object v0, p0, Lcom/android/settings/SimProfile;->simName:Ljava/lang/String;

    .line 83
    :goto_0
    iput v3, p0, Lcom/android/settings/SimProfile;->mVoiceCall:I

    .line 84
    iput v3, p0, Lcom/android/settings/SimProfile;->mVideoCall:I

    .line 86
    iput v4, p0, Lcom/android/settings/SimProfile;->mActivePhone:I

    .line 87
    iput v3, p0, Lcom/android/settings/SimProfile;->mDataPrefered:I

    .line 89
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 91
    const-string v0, "SimProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot is Enpty SLOT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget v0, p0, Lcom/android/settings/SimProfile;->EMPTY_SIM:I

    iput v0, p0, Lcom/android/settings/SimProfile;->simIcon:I

    .line 93
    iget v0, p0, Lcom/android/settings/SimProfile;->EMPTY_SIM:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimProfile;->simName:Ljava/lang/String;

    .line 94
    iget v0, p0, Lcom/android/settings/SimProfile;->EMPTY_SIM:I

    iput v0, p0, Lcom/android/settings/SimProfile;->mVoiceCall:I

    .line 95
    iget v0, p0, Lcom/android/settings/SimProfile;->EMPTY_SIM:I

    iput v0, p0, Lcom/android/settings/SimProfile;->mVideoCall:I

    .line 96
    iget v0, p0, Lcom/android/settings/SimProfile;->EMPTY_SIM:I

    iput v0, p0, Lcom/android/settings/SimProfile;->mActivePhone:I

    .line 97
    iget v0, p0, Lcom/android/settings/SimProfile;->EMPTY_SIM:I

    iput v0, p0, Lcom/android/settings/SimProfile;->mDataPrefered:I

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SimProfile;->LoadMultiSimProfile()V

    .line 100
    return-void

    .line 79
    :cond_1
    iput v4, p0, Lcom/android/settings/SimProfile;->simIcon:I

    .line 80
    const-string v0, "SIM 2"

    iput-object v0, p0, Lcom/android/settings/SimProfile;->simName:Ljava/lang/String;

    goto :goto_0
.end method

.method private insertProvider()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_id"

    iget v2, p0, Lcom/android/settings/SimProfile;->MultiSimIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string v1, "select_name_"

    iget-object v2, p0, Lcom/android/settings/SimProfile;->simName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "select_icon_"

    iget v2, p0, Lcom/android/settings/SimProfile;->simIcon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v1, "active"

    iget v2, p0, Lcom/android/settings/SimProfile;->mActivePhone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v1, "prefered_voice_call"

    iget v2, p0, Lcom/android/settings/SimProfile;->mVoiceCall:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v1, "prefered_video_call"

    iget v2, p0, Lcom/android/settings/SimProfile;->mVideoCall:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v1, "data_service"

    iget v2, p0, Lcom/android/settings/SimProfile;->mDataPrefered:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/SimProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/MultiSimProfileProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/SimProfile;->updateSimData()V

    .line 149
    return-void
.end method


# virtual methods
.method public LoadMultiSimProfile()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 104
    const/4 v7, 0x1

    .line 105
    .local v7, "isNew":Z
    sget-object v2, Lcom/android/settings/MultiSimProfileProvider;->COLUMS:[Ljava/lang/String;

    .line 106
    .local v2, "column":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/SimProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/MultiSimProfileProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 108
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/android/settings/SimProfile;->insertProvider()V

    .line 133
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    return-void

    .line 111
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lcom/android/settings/SimProfile;->MultiSimIndex:I

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 115
    const/4 v7, 0x0

    .line 117
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimProfile;->simName:Ljava/lang/String;

    .line 118
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SimProfile;->simIcon:I

    .line 119
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SimProfile;->mVoiceCall:I

    .line 120
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SimProfile;->mVideoCall:I

    .line 121
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SimProfile;->mDataPrefered:I

    .line 122
    const-string v0, "SimProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multiSimIndex ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/SimProfile;->MultiSimIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "SimProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNew?? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Icon = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", VoiceCall = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", VideoCall = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/SimProfile;->updateSimData()V

    .line 128
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/android/settings/SimProfile;->insertProvider()V

    goto/16 :goto_0
.end method

.method public updateMemberVariable(Ljava/lang/String;I)V
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "values"    # I

    .prologue
    .line 160
    const-string v0, "select_icon_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iput p2, p0, Lcom/android/settings/SimProfile;->simIcon:I

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v0, "active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iput p2, p0, Lcom/android/settings/SimProfile;->mActivePhone:I

    goto :goto_0

    .line 164
    :cond_2
    const-string v0, "prefered_voice_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iput p2, p0, Lcom/android/settings/SimProfile;->mVoiceCall:I

    goto :goto_0

    .line 166
    :cond_3
    const-string v0, "prefered_video_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iput p2, p0, Lcom/android/settings/SimProfile;->mVideoCall:I

    goto :goto_0

    .line 168
    :cond_4
    const-string v0, "data_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iput p2, p0, Lcom/android/settings/SimProfile;->mDataPrefered:I

    goto :goto_0
.end method

.method public updateMemberVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "select_name_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iput-object p2, p0, Lcom/android/settings/SimProfile;->simName:Ljava/lang/String;

    .line 156
    :cond_0
    return-void
.end method

.method public updateSimData()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "select_name_"

    iget-object v1, p0, Lcom/android/settings/SimProfile;->simName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SimProfile;->updateSimData(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "select_icon_"

    iget v1, p0, Lcom/android/settings/SimProfile;->simIcon:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SimProfile;->updateSimData(Ljava/lang/String;I)V

    .line 177
    const-string v0, "active"

    iget v1, p0, Lcom/android/settings/SimProfile;->mActivePhone:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SimProfile;->updateSimData(Ljava/lang/String;I)V

    .line 178
    const-string v0, "prefered_voice_call"

    iget v1, p0, Lcom/android/settings/SimProfile;->mVoiceCall:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SimProfile;->updateSimData(Ljava/lang/String;I)V

    .line 179
    const-string v0, "prefered_video_call"

    iget v1, p0, Lcom/android/settings/SimProfile;->mVideoCall:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SimProfile;->updateSimData(Ljava/lang/String;I)V

    .line 180
    const-string v0, "data_service"

    iget v1, p0, Lcom/android/settings/SimProfile;->mDataPrefered:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SimProfile;->updateSimData(Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method public updateSimData(Ljava/lang/String;I)V
    .locals 8
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "values"    # I

    .prologue
    const/4 v3, -0x1

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SimProfile;->updateMemberVariable(Ljava/lang/String;I)V

    .line 212
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v0, "editedValues":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    iget-object v4, p0, Lcom/android/settings/SimProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/settings/MultiSimProfileProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/SimProfile;->MultiSimIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    move-object v1, p1

    .line 222
    .local v1, "systemKey":Ljava/lang/String;
    move v2, p2

    .line 223
    .local v2, "systemValue":I
    const-string v4, "select"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SimProfile;->Slot:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    const-string v4, "SimProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimData INT systemkey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    :goto_0
    if-le v2, v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/android/settings/SimProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    :cond_1
    const-string v3, "SimProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimData(String column, int values) systemkey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 227
    :cond_2
    const-string v4, "prefered"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    const/4 v4, 0x1

    if-ne p2, v4, :cond_3

    iget v4, p0, Lcom/android/settings/SimProfile;->Slot:I

    add-int/lit8 v2, v4, 0x2

    .line 231
    :goto_1
    const-string v4, "SimProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimData PREFERED systemValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    .line 229
    goto :goto_1
.end method

.method public updateSimData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SimProfile;->updateMemberVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v0, "editedValues":Landroid/content/ContentValues;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/android/settings/SimProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/MultiSimProfileProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SimProfile;->MultiSimIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 196
    move-object v1, p1

    .line 197
    .local v1, "systemKey":Ljava/lang/String;
    const-string v2, "select"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SimProfile;->Slot:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    const-string v2, "SimProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimData STRING systemkey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SimProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    const-string v2, "SimProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimData(String column, String values) systemkey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method
