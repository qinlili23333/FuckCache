.class public abstract Lmoe/shizuku/server/IShizukuServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IShizukuServiceConnection.java"

# interfaces
.implements Lmoe/shizuku/server/IShizukuServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IShizukuServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "moe.shizuku.server.IShizukuServiceConnection"

.field static final TRANSACTION_connected:I = 0x1

.field static final TRANSACTION_dead:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "moe.shizuku.server.IShizukuServiceConnection"

    invoke-virtual {p0, p0, v0}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuServiceConnection;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "moe.shizuku.server.IShizukuServiceConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmoe/shizuku/server/IShizukuServiceConnection;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmoe/shizuku/server/IShizukuServiceConnection;

    return-object v1

    :cond_14
    new-instance v1, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmoe/shizuku/server/IShizukuServiceConnection;
    .registers 1

    sget-object v0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuServiceConnection;

    return-object v0
.end method

.method public static setDefaultImpl(Lmoe/shizuku/server/IShizukuServiceConnection;)Z
    .registers 3

    sget-object v0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuServiceConnection;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmoe/shizuku/server/IShizukuServiceConnection$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IShizukuServiceConnection;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "moe.shizuku.server.IShizukuServiceConnection"

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_22

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->dead()V

    return v1

    :sswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmoe/shizuku/server/IShizukuServiceConnection$Stub;->connected(Landroid/os/IBinder;)V

    return v1

    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
