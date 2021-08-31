.class public interface abstract Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;
.super Ljava/lang/Object;
.source "Shizuku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/shizuku/Shizuku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestPermissionResultListener"
.end annotation


# virtual methods
.method public abstract onRequestPermissionResult(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "grantResult"
        }
    .end annotation
.end method
