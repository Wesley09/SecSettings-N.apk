.class Lcom/android/settings/fingerprint/RegisterFingerprint$2;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

.field final synthetic val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object p2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const v4, 0x7f0200e1

    const v3, 0x7f0200e0

    .line 134
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v1, :pswitch_data_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[EVENT_ENROLL_STARTED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :pswitch_1
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[EVENT_ENROLL_STATUS]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventProcess[EVENT_ENROLL_STATUS] ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v1

    const/16 v2, 0x19

    if-lt v1, v2, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v1

    const/16 v2, 0x4b

    if-lt v1, v2, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_4

    .line 148
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09134b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 154
    :pswitch_2
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[EVENT_ENROLL_FINISHED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v5, :cond_6

    .line 156
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[RESULT_FAILED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 158
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_ALREADY_REGISTERED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09134c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "com.android.settings.permission.unlock"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    .line 192
    :cond_6
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_0

    .line 193
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[RESULT_SUCCESS]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, "result_intent":Landroid/content/Intent;
    const-string v1, "fingerIndex"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1, v5, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_0

    .line 159
    .end local v0    # "result_intent":Landroid/content/Intent;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 160
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_TOO_SLOW]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    :cond_8
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 162
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_TOO_FAST]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 163
    :cond_9
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 164
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_TIMEOUT]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 165
    :cond_a
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    .line 166
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_USER_DOESNT_EXIST]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 167
    :cond_b
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 168
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_TOO_MANY_BAD_SWIPES]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 169
    :cond_c
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_d

    .line 170
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_SENSOR_ERROR]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 171
    :cond_d
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    .line 172
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_USER_CANCELLED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 173
    :cond_e
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_f

    .line 174
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_ADD_IMAGE_FAILED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 175
    :cond_f
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_10

    .line 176
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_UNKNOWN]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 177
    :cond_10
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_11

    .line 178
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_DB_ERROR]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 179
    :cond_11
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 180
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventProcess[STATUS_NO_MATCHED_PERMISSION]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
