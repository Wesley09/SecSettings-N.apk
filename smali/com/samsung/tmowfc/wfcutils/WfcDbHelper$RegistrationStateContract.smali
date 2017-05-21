.class public interface abstract Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;
.super Ljava/lang/Object;
.source "WfcDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RegistrationStateContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    }
.end annotation


# static fields
.field public static final CONTENT_ERROR_URI:Landroid/net/Uri;

.field public static final CONTENT_STATE_URI:Landroid/net/Uri;

.field public static final CONTENT_SUMMARY_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "registration_state_"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_URI:Landroid/net/Uri;

    .line 105
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "registration_state_state_id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_STATE_URI:Landroid/net/Uri;

    .line 106
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "registration_state_error"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_ERROR_URI:Landroid/net/Uri;

    .line 107
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "registration_state_summary"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    return-void
.end method
