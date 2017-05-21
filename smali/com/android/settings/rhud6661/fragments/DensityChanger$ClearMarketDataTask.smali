.class Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;
.super Landroid/os/AsyncTask;
.source "DensityChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/rhud6661/fragments/DensityChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearMarketDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;


# direct methods
.method private constructor <init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;Lcom/android/settings/rhud6661/fragments/DensityChanger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/rhud6661/fragments/DensityChanger;
    .param p2, "x1"    # Lcom/android/settings/rhud6661/fragments/DensityChanger$1;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;-><init>(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 19
    .param p1, "stuff"    # [Ljava/lang/String;

    .prologue
    .line 286
    const-string v15, "/data/data/com.android.vending/"

    .line 287
    .local v15, "vending":Ljava/lang/String;
    const-string v11, "/data/data/com.google.android.gms/"

    .line 288
    .local v11, "gms":Ljava/lang/String;
    const-string v12, "/data/data/com.google.android.gsf/"

    .line 290
    .local v12, "gsf":Ljava/lang/String;
    new-instance v16, Lcom/android/settings/rhud6661/util/CMDProcessor;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/rhud6661/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/rhud6661/util/CMDProcessor;->su:Lcom/android/settings/rhud6661/util/CMDProcessor$SH;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ls "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/rhud6661/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;

    move-result-object v5

    .line 291
    .local v5, "cr":Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;
    new-instance v16, Lcom/android/settings/rhud6661/util/CMDProcessor;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/rhud6661/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/rhud6661/util/CMDProcessor;->su:Lcom/android/settings/rhud6661/util/CMDProcessor$SH;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ls "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/rhud6661/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;

    move-result-object v6

    .line 292
    .local v6, "cr_gms":Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;
    new-instance v16, Lcom/android/settings/rhud6661/util/CMDProcessor;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/rhud6661/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/rhud6661/util/CMDProcessor;->su:Lcom/android/settings/rhud6661/util/CMDProcessor$SH;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ls "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/rhud6661/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;

    move-result-object v7

    .line 294
    .local v7, "cr_gsf":Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;
    iget-object v0, v5, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    iget-object v0, v6, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    iget-object v0, v7, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 295
    :cond_0
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 323
    :goto_0
    return-object v16

    .line 297
    :cond_1
    iget-object v0, v5, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v14, v1

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v14, :cond_3

    aget-object v8, v1, v13

    .line 298
    .local v8, "dir":Ljava/lang/String;
    const-string v16, "lib"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 299
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "rm -r "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "c":Ljava/lang/String;
    new-instance v16, Lcom/android/settings/rhud6661/util/CMDProcessor;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/rhud6661/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/rhud6661/util/CMDProcessor;->su:Lcom/android/settings/rhud6661/util/CMDProcessor$SH;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/settings/rhud6661/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->success()Z

    move-result v16

    if-nez v16, :cond_2

    .line 302
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto :goto_0

    .line 297
    .end local v2    # "c":Ljava/lang/String;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 306
    .end local v8    # "dir":Ljava/lang/String;
    :cond_3
    iget-object v0, v6, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v14, v1

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_5

    aget-object v9, v1, v13

    .line 307
    .local v9, "dir_gms":Ljava/lang/String;
    const-string v16, "lib"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 308
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "rm -r "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "c_gms":Ljava/lang/String;
    new-instance v16, Lcom/android/settings/rhud6661/util/CMDProcessor;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/rhud6661/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/rhud6661/util/CMDProcessor;->su:Lcom/android/settings/rhud6661/util/CMDProcessor$SH;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/settings/rhud6661/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->success()Z

    move-result v16

    if-nez v16, :cond_4

    .line 311
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto/16 :goto_0

    .line 306
    .end local v3    # "c_gms":Ljava/lang/String;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 315
    .end local v9    # "dir_gms":Ljava/lang/String;
    :cond_5
    iget-object v0, v7, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v14, v1

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_7

    aget-object v10, v1, v13

    .line 316
    .local v10, "dir_gsf":Ljava/lang/String;
    const-string v16, "lib"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 317
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "rm -r "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "c_gsf":Ljava/lang/String;
    new-instance v16, Lcom/android/settings/rhud6661/util/CMDProcessor;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/rhud6661/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/rhud6661/util/CMDProcessor;->su:Lcom/android/settings/rhud6661/util/CMDProcessor$SH;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/settings/rhud6661/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/rhud6661/util/CMDProcessor$CommandResult;->success()Z

    move-result v16

    if-nez v16, :cond_6

    .line 320
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto/16 :goto_0

    .line 315
    .end local v4    # "c_gsf":Ljava/lang/String;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 323
    .end local v10    # "dir_gsf":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 284
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 327
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    # invokes: Lcom/android/settings/rhud6661/fragments/DensityChanger;->showRootDeniedInfoDialog()V
    invoke-static {v0}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->access$400(Lcom/android/settings/rhud6661/fragments/DensityChanger;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    iget-object v0, v0, Lcom/android/settings/rhud6661/fragments/DensityChanger;->mClearMarketData:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;->this$0:Lcom/android/settings/rhud6661/fragments/DensityChanger;

    invoke-virtual {v1}, Lcom/android/settings/rhud6661/fragments/DensityChanger;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070974

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 284
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/rhud6661/fragments/DensityChanger$ClearMarketDataTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
