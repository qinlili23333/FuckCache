.class public Lrikka/shizuku/cmd/ShizukuCmd;
.super Ljava/lang/Object;
.source "ShizukuCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;
    }
.end annotation


# static fields
.field private static preserveEnvironment:Z

.field private static verboseMessageAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lrikka/shizuku/cmd/ShizukuCmd;->verboseMessageAllowed:Z

    sput-boolean v0, Lrikka/shizuku/cmd/ShizukuCmd;->preserveEnvironment:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static abort(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lrikka/shizuku/cmd/ShizukuCmd;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lrikka/shizuku/cmd/ShizukuCmd;->abort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200([Ljava/lang/String;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0}, Lrikka/shizuku/cmd/ShizukuCmd;->doExec([Ljava/lang/String;)V

    return-void
.end method

.method private static doExec([Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lrikka/shizuku/cmd/ShizukuCmd;->preserveEnvironment:Z
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_11d

    const-string v1, "..."

    const-string v2, "Starting command "

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_a8

    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_1b

    :cond_4c
    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cwd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lrikka/shizuku/cmd/ShizukuCmd;->verbose(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "env: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lrikka/shizuku/cmd/ShizukuCmd;->verbose(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v4

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lrikka/shizuku/cmd/ShizukuCmd;->verbose(Ljava/lang/String;)V

    invoke-static {p0, v5, v6}, Lrikka/shizuku/Shizuku;->newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lrikka/shizuku/ShizukuRemoteProcess;

    move-result-object v1

    move-object v0, v1

    goto :goto_c3

    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrikka/shizuku/cmd/ShizukuCmd;->verbose(Ljava/lang/String;)V

    invoke-static {p0, v3, v3}, Lrikka/shizuku/Shizuku;->newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lrikka/shizuku/ShizukuRemoteProcess;

    move-result-object v0

    :goto_c3
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_cf
    .catchall {:try_start_a .. :try_end_cf} :catchall_11d

    nop

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v7, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v7, v1, v8, v6}, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v7}, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;->start()V

    new-instance v7, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v7, v2, v8, v6}, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v7}, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;->start()V

    new-instance v7, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;

    sget-object v8, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v7, v8, v5, v3}, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v7}, Lrikka/shizuku/cmd/ShizukuCmd$TransferThread;->start()V

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v3

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exited with "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lrikka/shizuku/cmd/ShizukuCmd;->verbose(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void

    :catchall_11d
    move-exception v0

    sget-boolean v1, Lrikka/shizuku/cmd/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_125

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_125
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lrikka/shizuku/cmd/ShizukuCmd;->abort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$main$0(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lrikka/shizuku/cmd/ShizukuCmd;->preExec([Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    sget-boolean v0, Lrikka/shizuku/cmd/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1e
    array-length v0, p0

    if-nez v0, :cond_25

    invoke-static {}, Lrikka/shizuku/cmd/ShizukuCmd;->printHelp()V

    return-void

    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_2d
    if-ge v3, v1, :cond_a6

    aget-object v4, p0, v3

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_e8

    :cond_3a
    goto :goto_8a

    :sswitch_3b
    const-string v6, "--version"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v5, 0x3

    goto :goto_8a

    :sswitch_45
    const-string v6, "--verbose"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    move v5, v2

    goto :goto_8a

    :sswitch_4f
    const-string v6, "--help"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    move v5, v7

    goto :goto_8a

    :sswitch_59
    const-string v6, "--preserve-environment"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v5, 0x7

    goto :goto_8a

    :sswitch_63
    const-string v6, "-v"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v5, 0x4

    goto :goto_8a

    :sswitch_6d
    const-string v6, "-p"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v5, 0x6

    goto :goto_8a

    :sswitch_77
    const-string v6, "--m"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v5, 0x5

    goto :goto_8a

    :sswitch_81
    const-string v6, "-h"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v5, 0x2

    :goto_8a
    packed-switch v5, :pswitch_data_10a

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    :pswitch_91  #0x5, 0x6, 0x7
    sput-boolean v7, Lrikka/shizuku/cmd/ShizukuCmd;->preserveEnvironment:Z

    goto :goto_a3

    :pswitch_94  #0x3, 0x4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "11.6.0.r591.e729431 (591)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :pswitch_9c  #0x1, 0x2
    invoke-static {}, Lrikka/shizuku/cmd/ShizukuCmd;->printHelp()V

    return-void

    :pswitch_a0  #0x0
    sput-boolean v7, Lrikka/shizuku/cmd/ShizukuCmd;->verboseMessageAllowed:Z

    nop

    :goto_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_a6
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v1

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_b1

    const-string v1, "com.android.shell"

    goto :goto_c6

    :cond_b1
    const-string v1, "moe.qinlili.fuckcache"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c1

    const-string v2, "PKG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    :cond_c1
    const-string v2, ""

    invoke-static {v2}, Lrikka/shizuku/cmd/ShizukuCmd;->abort(Ljava/lang/String;)V

    :cond_c6
    :goto_c6
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v2, Lrikka/shizuku/cmd/-$$Lambda$ShizukuCmd$kxSpH9HYJ4KCClUFmVqeEORGiEo;

    invoke-direct {v2, v0}, Lrikka/shizuku/cmd/-$$Lambda$ShizukuCmd$kxSpH9HYJ4KCClUFmVqeEORGiEo;-><init>(Ljava/util/List;)V

    invoke-static {v2}, Lrikka/shizuku/Shizuku;->addBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V

    :try_start_d1
    invoke-static {v1}, Lrikka/shizuku/cmd/ShizukuCmd;->requestForBinder(Ljava/lang/String;)V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_d5

    goto :goto_e4

    :catchall_d5
    move-exception v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "Failed to request binder from Shizuku app"

    invoke-static {v3}, Lrikka/shizuku/cmd/ShizukuCmd;->abort(Ljava/lang/String;)V

    :goto_e4
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :sswitch_data_e8
    .sparse-switch
        0x5db -> :sswitch_81
        0x5e0 -> :sswitch_77
        0x5e3 -> :sswitch_6d
        0x5e9 -> :sswitch_63
        0x2038d5b2 -> :sswitch_59
        0x4f7504e1 -> :sswitch_4f
        0x6789dfe2 -> :sswitch_45
        0x67918338 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_a0  #00000000
        :pswitch_9c  #00000001
        :pswitch_9c  #00000002
        :pswitch_94  #00000003
        :pswitch_94  #00000004
        :pswitch_91  #00000005
        :pswitch_91  #00000006
        :pswitch_91  #00000007
    .end packed-switch
.end method

.method private static preExec([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lrikka/shizuku/cmd/ShizukuCmd;->doExec([Ljava/lang/String;)V

    goto :goto_27

    :cond_a
    invoke-static {}, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Permission denied, please check Shizuku app"

    invoke-static {v0}, Lrikka/shizuku/cmd/ShizukuCmd;->abort(Ljava/lang/String;)V

    goto :goto_27

    :cond_16
    const-string v0, "Requesting permission..."

    invoke-static {v0}, Lrikka/shizuku/cmd/ShizukuCmd;->verbose(Ljava/lang/String;)V

    new-instance v0, Lrikka/shizuku/cmd/ShizukuCmd$2;

    invoke-direct {v0, p0}, Lrikka/shizuku/cmd/ShizukuCmd$2;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->addRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->requestPermission(I)V

    :goto_27
    return-void
.end method

.method private static printHelp()V
    .registers 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static requestForBinder(Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lrikka/shizuku/cmd/ShizukuCmd$1;

    move-object/from16 v13, p0

    invoke-direct {v0, v13}, Lrikka/shizuku/cmd/ShizukuCmd$1;-><init>(Ljava/lang/String;)V

    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_19

    invoke-static {v14}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    move-object v15, v1

    goto :goto_1e

    :cond_19
    invoke-static {v14}, Lhidden/HiddenApiBridgeV23;->ActivityManagerNative_asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    move-object v15, v1

    :goto_1e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v12, v1

    const-string v1, "binder"

    invoke-virtual {v12, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "rikka.shizuku.intent.action.REQUEST_BINDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Request binder from Shizuku"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v16

    const-string v1, "Start activity..."

    invoke-static {v1}, Lrikka/shizuku/cmd/ShizukuCmd;->verbose(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v1

    const v3, 0x186a0

    div-int v17, v1, v3

    move-object v1, v15

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v18, v12

    move/from16 v12, v17

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    return-void
.end method

.method private static verbose(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    sget-boolean v0, Lrikka/shizuku/cmd/ShizukuCmd;->verboseMessageAllowed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method
