.class Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;
.super Ljava/lang/Thread;
.source "ShizukuCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/shizuku/cmd/ShizukuCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransferThread"
.end annotation


# instance fields
.field private final input:Ljava/io/InputStream;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "latch"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;->input:Ljava/io/InputStream;

    iput-object p2, p0, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;->output:Ljava/io/OutputStream;

    iput-object p3, p0, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_4
    :try_start_4
    iget-object v1, p0, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1a

    iget-object v1, p0, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;->output:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_19} :catch_1b

    goto :goto_4

    :cond_1a
    goto :goto_1f

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1f
    iget-object v1, p0, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_26
    return-void
.end method
