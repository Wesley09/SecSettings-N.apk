.class public Lcom/android/settings/rhud6661/util/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findBuildPropValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "prop"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v2, "/system/build.prop"

    .line 220
    .local v2, "mBuildPath":Ljava/lang/String;
    const-string v0, "disable"

    .line 221
    .local v0, "DISABLE":Ljava/lang/String;
    const/4 v4, 0x0

    .line 224
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 225
    .local v3, "mProps":Ljava/util/Properties;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 227
    invoke-virtual {v3, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    const-string v5, "Helpers"

    const-string v6, "Helpers:findBuildPropValueOf found {%s} with the value (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    .end local v3    # "mProps":Ljava/util/Properties;
    :goto_0
    if-eqz v4, :cond_0

    .line 238
    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 229
    .restart local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "ioe":Ljava/io/IOException;
    const-string v5, "Helpers"

    const-string v6, "failed to load input stream"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    move-object v4, v0

    .line 238
    goto :goto_1

    .line 231
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static getMount(Ljava/lang/String;)Z
    .locals 9
    .param p0, "mount"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 100
    new-instance v0, Lcom/android/settings/rhud6661/util/CMDProcessor;

    invoke-direct {v0}, Lcom/android/settings/rhud6661/util/CMDProcessor;-><init>()V

    .line 101
    .local v0, "cmd":Lcom/android/settings/rhud6661/util/CMDProcessor;
    const-string v6, "/system"

    invoke-static {v6}, Lcom/android/settings/rhud6661/util/Helpers;->getMounts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "mounts":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 105
    const/4 v6, 0x0

    aget-object v1, v2, v6

    .line 106
    .local v1, "device":Ljava/lang/String;
    aget-object v3, v2, v5

    .line 107
    .local v3, "path":Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v4, v2, v6

    .line 108
    .local v4, "point":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/settings/rhud6661/util/CMDProcessor;->su:Lcom/android/settings/rhud6661/util/CMDProcessor$SH;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mount -o "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",remount -t "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/rhud6661/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->success()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    .end local v1    # "device":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "point":Ljava/lang/String;
    :goto_0
    return v5

    :cond_0
    iget-object v5, v0, Lcom/android/settings/rhud6661/util/CMDProcessor;->su:Lcom/android/settings/rhud6661/util/CMDProcessor$SH;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "busybox mount -o remount,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " /system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/rhud6661/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->success()Z

    move-result v5

    goto :goto_0
.end method

.method public static getMounts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 78
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/mounts"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 79
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 80
    .local v2, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 95
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 87
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Helpers"

    const-string v4, "/proc/mounts does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Helpers"

    const-string v4, "Error reading /proc/mounts"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
