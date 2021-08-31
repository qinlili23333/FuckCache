.class public Lrikka/shizuku/ShizukuRemoteProcess;
.super Ljava/lang/Process;
.source "ShizukuRemoteProcess.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lrikka/shizuku/ShizukuRemoteProcess;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private is:Ljava/io/InputStream;

.field private final mRemote:Lmoe/shizuku/server/IRemoteProcess;

.field private os:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lrikka/shizuku/ShizukuRemoteProcess$1;

    invoke-direct {v0}, Lrikka/shizuku/ShizukuRemoteProcess$1;-><init>()V

    sput-object v0, Lrikka/shizuku/ShizukuRemoteProcess;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmoe/shizuku/server/IRemoteProcess$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IRemoteProcess;

    move-result-object v0

    iput-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lrikka/shizuku/ShizukuRemoteProcess$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lrikka/shizuku/ShizukuRemoteProcess;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lmoe/shizuku/server/IRemoteProcess;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    return-void
.end method


# virtual methods
.method public alive()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    invoke-interface {v0}, Lmoe/shizuku/server/IRemoteProcess;->alive()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    invoke-interface {v0}, Lmoe/shizuku/server/IRemoteProcess;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    invoke-interface {v0}, Lmoe/shizuku/server/IRemoteProcess;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public exitValue()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    invoke-interface {v0}, Lmoe/shizuku/server/IRemoteProcess;->exitValue()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 3

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    invoke-interface {v1}, Lmoe/shizuku/server/IRemoteProcess;->getErrorStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->is:Ljava/io/InputStream;

    if-nez v0, :cond_19

    :try_start_4
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    invoke-interface {v1}, Lmoe/shizuku/server/IRemoteProcess;->getInputStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->is:Ljava/io/InputStream;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_19

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_19
    :goto_19
    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_19

    :try_start_4
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    invoke-interface {v1}, Lmoe/shizuku/server/IRemoteProcess;->getOutputStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->os:Ljava/io/OutputStream;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_19

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_19
    :goto_19
    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public waitFor()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    invoke-interface {v0}, Lmoe/shizuku/server/IRemoteProcess;->waitFor()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public waitForTimeout(JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lmoe/shizuku/server/IRemoteProcess;->waitForTimeout(JLjava/lang/String;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    iget-object v0, p0, Lrikka/shizuku/ShizukuRemoteProcess;->mRemote:Lmoe/shizuku/server/IRemoteProcess;

    invoke-interface {v0}, Lmoe/shizuku/server/IRemoteProcess;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
