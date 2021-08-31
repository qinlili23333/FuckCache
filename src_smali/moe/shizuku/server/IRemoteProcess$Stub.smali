.class public abstract Lmoe/shizuku/server/IRemoteProcess$Stub;
.super Landroid/os/Binder;
.source "IRemoteProcess.java"

# interfaces
.implements Lmoe/shizuku/server/IRemoteProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/shizuku/server/IRemoteProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "moe.shizuku.server.IRemoteProcess"

.field static final TRANSACTION_alive:I = 0x7

.field static final TRANSACTION_destroy:I = 0x6

.field static final TRANSACTION_exitValue:I = 0x5

.field static final TRANSACTION_getErrorStream:I = 0x3

.field static final TRANSACTION_getInputStream:I = 0x2

.field static final TRANSACTION_getOutputStream:I = 0x1

.field static final TRANSACTION_waitFor:I = 0x4

.field static final TRANSACTION_waitForTimeout:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "moe.shizuku.server.IRemoteProcess"

    invoke-virtual {p0, p0, v0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IRemoteProcess;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "moe.shizuku.server.IRemoteProcess"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmoe/shizuku/server/IRemoteProcess;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmoe/shizuku/server/IRemoteProcess;

    return-object v1

    :cond_14
    new-instance v1, Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;

    invoke-direct {v1, p0}, Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmoe/shizuku/server/IRemoteProcess;
    .registers 1

    sget-object v0, Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IRemoteProcess;

    return-object v0
.end method

.method public static setDefaultImpl(Lmoe/shizuku/server/IRemoteProcess;)Z
    .registers 3

    sget-object v0, Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IRemoteProcess;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmoe/shizuku/server/IRemoteProcess$Stub$Proxy;->sDefaultImpl:Lmoe/shizuku/server/IRemoteProcess;

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
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "moe.shizuku.server.IRemoteProcess"

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_a0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v1}, Lmoe/shizuku/server/IRemoteProcess$Stub;->waitForTimeout(JLjava/lang/String;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :sswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->alive()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :sswitch_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->destroy()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->exitValue()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :sswitch_4c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->waitFor()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :sswitch_5a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->getErrorStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6d

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_70

    :cond_6d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_70
    return v2

    :sswitch_71
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->getInputStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_84

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_87

    :cond_84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_87
    return v2

    :sswitch_88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->getOutputStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_9b

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9e

    :cond_9b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9e
    return v2

    nop

    :sswitch_data_a0
    .sparse-switch
        0x1 -> :sswitch_88
        0x2 -> :sswitch_71
        0x3 -> :sswitch_5a
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_3e
        0x6 -> :sswitch_34
        0x7 -> :sswitch_26
        0x8 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
