.class Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$2;
.super Landroid/content/BroadcastReceiver;
.source "ssg"


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$2;->a:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x87fa0d4

    invoke-static {v0, v1, v2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 65
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$2;->a:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$2;->a:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->a(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$2;->a:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->c:Ljava/util/Set;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 68
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$PowerChangeListener;

    .line 70
    invoke-interface {v0}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$PowerChangeListener;->b()V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v2, -0x1c4fd1a0    # -6.499937E21f

    invoke-static {v2, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    throw v0

    .line 72
    :cond_0
    const v0, 0x53f52937

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    return-void
.end method
