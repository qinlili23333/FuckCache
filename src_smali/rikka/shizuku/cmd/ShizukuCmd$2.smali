.class Lrikka/shizuku/cmd/ShizukuCmd$2;
.super Ljava/lang/Object;
.source "ShizukuCmd.java"

# interfaces
.implements Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrikka/shizuku/cmd/ShizukuCmd;->preExec([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$args"
        }
    .end annotation

    iput-object p1, p0, Lrikka/shizuku/cmd/ShizukuCmd$2;->val$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionResult(II)V
    .registers 4
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

    invoke-static {p0}, Lrikka/shizuku/Shizuku;->removeRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)Z

    if-nez p2, :cond_10

    :try_start_5
    iget-object v0, p0, Lrikka/shizuku/cmd/ShizukuCmd$2;->val$args:[Ljava/lang/String;

    invoke-static {v0}, Lrikka/shizuku/cmd/ShizukuCmd;->access$200([Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_f
    goto :goto_15

    :cond_10
    const-string v0, "Permission denied, please check Shizuku app"

    invoke-static {v0}, Lrikka/shizuku/cmd/ShizukuCmd;->access$100(Ljava/lang/String;)V

    :goto_15
    return-void
.end method
