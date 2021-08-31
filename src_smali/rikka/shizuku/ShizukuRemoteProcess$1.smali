.class Lrikka/shizuku/ShizukuRemoteProcess$1;
.super Ljava/lang/Object;
.source "ShizukuRemoteProcess.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/shizuku/ShizukuRemoteProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lrikka/shizuku/ShizukuRemoteProcess;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lrikka/shizuku/ShizukuRemoteProcess$1;->createFromParcel(Landroid/os/Parcel;)Lrikka/shizuku/ShizukuRemoteProcess;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lrikka/shizuku/ShizukuRemoteProcess;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    new-instance v0, Lrikka/shizuku/ShizukuRemoteProcess;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrikka/shizuku/ShizukuRemoteProcess;-><init>(Landroid/os/Parcel;Lrikka/shizuku/ShizukuRemoteProcess$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lrikka/shizuku/ShizukuRemoteProcess$1;->newArray(I)[Lrikka/shizuku/ShizukuRemoteProcess;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lrikka/shizuku/ShizukuRemoteProcess;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    new-array v0, p1, [Lrikka/shizuku/ShizukuRemoteProcess;

    return-object v0
.end method
