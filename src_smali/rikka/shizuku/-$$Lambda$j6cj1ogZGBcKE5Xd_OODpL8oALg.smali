.class public final synthetic Lrikka/shizuku/-$$Lambda$j6cj1ogZGBcKE5Xd_OODpL8oALg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;


# direct methods
.method public synthetic constructor <init>(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/-$$Lambda$j6cj1ogZGBcKE5Xd_OODpL8oALg;->f$0:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lrikka/shizuku/-$$Lambda$j6cj1ogZGBcKE5Xd_OODpL8oALg;->f$0:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    invoke-interface {v0}, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;->onBinderReceived()V

    return-void
.end method
