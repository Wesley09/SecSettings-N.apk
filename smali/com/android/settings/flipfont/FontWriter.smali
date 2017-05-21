.class public Lcom/android/settings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static LOC_DIRECTORY:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    .line 58
    const-string v0, "/data/data/com.android.settings/app_fonts"

    sput-object v0, Lcom/android/settings/flipfont/FontWriter;->LOC_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 50
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 52
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "FontDir"    # Ljava/io/File;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v3, "newDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "tmp":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 153
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 154
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 160
    .end local v2    # "i":I
    .local v0, "bRet":Z
    :goto_1
    return v0

    .line 159
    .end local v0    # "bRet":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bRet":Z
    goto :goto_1
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .locals 6
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 169
    .local v2, "run":Ljava/lang/Runtime;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 170
    .local v1, "myProcess":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 171
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cannot chmod"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    .end local v1    # "myProcess":Ljava/lang/Process;
    .end local v2    # "run":Ljava/lang/Runtime;
    :catch_0
    move-exception v3

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeLoc : File permission error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 15
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .prologue
    .line 191
    move-object/from16 v10, p2

    .line 192
    .local v10, "myInputStream":Ljava/io/InputStream;
    move-object/from16 v9, p1

    .line 193
    .local v9, "myDirectory":Ljava/io/File;
    move-object/from16 v8, p3

    .line 194
    .local v8, "myDestination":Ljava/lang/String;
    const-string v0, ""

    .line 196
    .local v0, "absolutePath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v2, "dest":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 200
    new-instance v12, Ljava/io/BufferedOutputStream;

    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 201
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 202
    .local v1, "b":[B
    const/4 v11, 0x0

    .line 203
    .local v11, "read":I
    :goto_0
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_5

    .line 204
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 210
    .end local v1    # "b":[B
    .end local v2    # "dest":Ljava/io/File;
    .end local v11    # "read":I
    :catch_0
    move-exception v4

    .line 212
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 214
    .local v6, "length":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 217
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    if-eqz v10, :cond_1

    .line 221
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 226
    :cond_1
    :goto_1
    :try_start_3
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    .line 227
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 232
    :cond_2
    :goto_2
    :try_start_4
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_3

    .line 233
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 238
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":J
    :cond_3
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 240
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 242
    .restart local v6    # "length":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_4

    .line 243
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 245
    :cond_4
    return-void

    .line 206
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":J
    .restart local v1    # "b":[B
    .restart local v2    # "dest":Ljava/io/File;
    .restart local v11    # "read":I
    :cond_5
    :try_start_5
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    .line 207
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 208
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 209
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    if-eqz v10, :cond_6

    .line 221
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 226
    :cond_6
    :goto_4
    :try_start_7
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_7

    .line 227
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 232
    :cond_7
    :goto_5
    :try_start_8
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_3

    .line 233
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 234
    :catch_1
    move-exception v3

    .line 235
    .local v3, "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 222
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 223
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 228
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 229
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 222
    .end local v1    # "b":[B
    .end local v2    # "dest":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v11    # "read":I
    .restart local v4    # "ex":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":J
    :catch_4
    move-exception v3

    .line 223
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 229
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 234
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 235
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 219
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":J
    :catchall_0
    move-exception v12

    .line 220
    if-eqz v10, :cond_8

    .line 221
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 226
    :cond_8
    :goto_6
    :try_start_a
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_9

    .line 227
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 232
    :cond_9
    :goto_7
    :try_start_b
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v13, :cond_a

    .line 233
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 236
    :cond_a
    :goto_8
    throw v12

    .line 222
    :catch_7
    move-exception v3

    .line 223
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : myInputStream.close() error"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 228
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 229
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : fOut.close() error"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 234
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 235
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : bos.close() error"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontName"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "fonts"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 114
    .local v4, "newFontDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "tmp":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v7

    if-ge v2, v8, :cond_0

    .line 119
    aget-object v8, v7, v2

    invoke-direct {p0, v4, v8}, Lcom/android/settings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 125
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 126
    .local v5, "run":Ljava/lang/Runtime;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chmod 777 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 128
    .local v3, "myProcess":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 129
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v8

    if-eqz v8, :cond_1

    .line 130
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Cannot chmod"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    .end local v3    # "myProcess":Ljava/lang/Process;
    .end local v5    # "run":Ljava/lang/Runtime;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 142
    :cond_1
    :goto_1
    return-object v1

    .line 139
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v8, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeLoc : File permission error, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v8

    goto :goto_1
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, ""

    .line 70
    .local v0, "absolutePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 71
    .local v5, "userId":I
    if-nez v5, :cond_2

    .line 72
    const-string v6, "/data/data/com.android.settings/app_fonts/"

    sput-object v6, Lcom/android/settings/flipfont/FontWriter;->LOC_DIRECTORY:Ljava/lang/String;

    .line 78
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/settings/flipfont/FontWriter;->LOC_DIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 82
    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 83
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 84
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 85
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 86
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v6, :cond_0

    .line 92
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :cond_0
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_1

    .line 98
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    .end local v1    # "dest":Ljava/io/File;
    :cond_1
    :goto_2
    const-string v6, "persist.sys.flipfontpath"

    invoke-static {v6, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 107
    return-void

    .line 74
    :cond_2
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 75
    .local v4, "integer":Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/com.android.settings/app_fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/flipfont/FontWriter;->LOC_DIRECTORY:Ljava/lang/String;

    goto/16 :goto_0

    .line 93
    .end local v4    # "integer":Ljava/lang/Integer;
    .restart local v1    # "dest":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "writeLoc : osw.close() error"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "writeLoc : fOut.close() error"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 87
    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 88
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v6, :cond_3

    .line 92
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 97
    :cond_3
    :goto_3
    :try_start_5
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_1

    .line 98
    iget-object v6, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 99
    :catch_3
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "writeLoc : fOut.close() error"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 93
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 94
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "writeLoc : osw.close() error"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 90
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 91
    :try_start_6
    iget-object v7, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v7, :cond_4

    .line 92
    iget-object v7, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 97
    :cond_4
    :goto_4
    :try_start_7
    iget-object v7, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v7, :cond_5

    .line 98
    iget-object v7, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 101
    :cond_5
    :goto_5
    throw v6

    .line 93
    :catch_5
    move-exception v2

    .line 94
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "writeLoc : osw.close() error"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "writeLoc : fOut.close() error"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
