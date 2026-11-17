.class public Lcom/chillingo/liboffers/gui/misc/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/chillingo/liboffers/gui/interaction/TouchEvents;
.implements Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;


# instance fields
.field private currentState:Ljava/lang/String;

.field private states:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/chillingo/liboffers/gui/misc/State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    .line 29
    return-void
.end method


# virtual methods
.method public addState(Lcom/chillingo/liboffers/gui/misc/State;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Lcom/chillingo/liboffers/gui/misc/State;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    return-void
.end method

.method public gestureRecognized(Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;)V
    .locals 3
    .param p1, "gesture"    # Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/misc/State;

    .line 123
    .local v0, "current":Lcom/chillingo/liboffers/gui/misc/State;
    if-eqz v0, :cond_0

    .line 125
    instance-of v1, v0, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;

    .end local v0    # "current":Lcom/chillingo/liboffers/gui/misc/State;
    invoke-interface {v0, p1}, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureEvents;->gestureRecognized(Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;)V

    .line 130
    :cond_0
    return-void
.end method

.method public removeAllStates()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public removeStateWithId(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    .line 49
    :cond_0
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 4
    .param p1, "newState"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/misc/State;

    .line 66
    .local v1, "nextState":Lcom/chillingo/liboffers/gui/misc/State;
    if-eqz v1, :cond_1

    .line 68
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/misc/State;

    .line 73
    .local v0, "current":Lcom/chillingo/liboffers/gui/misc/State;
    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/misc/State;->exit()V

    .line 77
    .end local v0    # "current":Lcom/chillingo/liboffers/gui/misc/State;
    :cond_0
    invoke-interface {v1}, Lcom/chillingo/liboffers/gui/misc/State;->enter()V

    .line 80
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    .line 82
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/misc/State;

    .line 111
    .local v0, "current":Lcom/chillingo/liboffers/gui/misc/State;
    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/misc/State;->exit()V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public touchesBegan(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/misc/State;

    .line 137
    .local v0, "current":Lcom/chillingo/liboffers/gui/misc/State;
    if-eqz v0, :cond_0

    .line 139
    instance-of v1, v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    .end local v0    # "current":Lcom/chillingo/liboffers/gui/misc/State;
    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;->touchesBegan(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 144
    :cond_0
    return-void
.end method

.method public touchesCancelled(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/misc/State;

    .line 165
    .local v0, "current":Lcom/chillingo/liboffers/gui/misc/State;
    if-eqz v0, :cond_0

    .line 167
    instance-of v1, v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    if-eqz v1, :cond_0

    .line 169
    check-cast v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    .end local v0    # "current":Lcom/chillingo/liboffers/gui/misc/State;
    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;->touchesCancelled(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 172
    :cond_0
    return-void
.end method

.method public touchesEnded(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/misc/State;

    .line 179
    .local v0, "current":Lcom/chillingo/liboffers/gui/misc/State;
    if-eqz v0, :cond_0

    .line 181
    instance-of v1, v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    if-eqz v1, :cond_0

    .line 183
    check-cast v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    .end local v0    # "current":Lcom/chillingo/liboffers/gui/misc/State;
    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;->touchesEnded(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 186
    :cond_0
    return-void
.end method

.method public touchesMoved(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/misc/State;

    .line 151
    .local v0, "current":Lcom/chillingo/liboffers/gui/misc/State;
    if-eqz v0, :cond_0

    .line 153
    instance-of v1, v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;

    .end local v0    # "current":Lcom/chillingo/liboffers/gui/misc/State;
    invoke-interface {v0, p1, p2}, Lcom/chillingo/liboffers/gui/interaction/TouchEvents;->touchesMoved(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 158
    :cond_0
    return-void
.end method

.method public updateState(DD)V
    .locals 5
    .param p1, "timestep"    # D
    .param p3, "nominalTimestepFactor"    # D

    .prologue
    .line 89
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->states:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/chillingo/liboffers/gui/misc/StateMachine;->currentState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/misc/State;

    .line 96
    .local v1, "obj":Lcom/chillingo/liboffers/gui/misc/State;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/chillingo/liboffers/gui/misc/State;->update(DD)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "nextState":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lcom/chillingo/liboffers/gui/misc/StateMachine;->setState(Ljava/lang/String;)V

    .line 104
    .end local v0    # "nextState":Ljava/lang/String;
    .end local v1    # "obj":Lcom/chillingo/liboffers/gui/misc/State;
    :cond_0
    return-void
.end method
