.class public interface abstract Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$GbaInitContract;
.super Ljava/lang/Object;
.source "WfcDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GbaInitContract"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "gba_init"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$GbaInitContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
