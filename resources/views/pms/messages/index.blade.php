@extends('pms.layouts.app')
@section('content')
<section class="section">
    <div class="container-fluid">
        <div class="title">
          <div class="row align-items-center">
              <div class="col">
                 <h1 class="fs-5 mb-0">Unified Inbox</h1>
              </div>              
          </div>
       </div>  
            <div class="chatContainer">
                

                <!-- Chat Container -->
                <div class="chat-container">
                    
                    <!-- Threads -->
                    <div class="thread-list">
                       @forelse($threads as $thread)
                         @if(is_array($thread))
                        <div class="thread {{ !empty($thread['NumberOfUnreadMessages']) ? 'unread' : '' }}" onclick="openChat()">
                            <div class="row g-2 align-items-center flex-row-reverse">
                                <div class="col-auto">
                                    <div class="otaLogo">
                                    @php $channel = $thread['CommunicationChannel'] ?? ''; @endphp
                                    @if($channel === 'Airbnb')
                                        <img src="https://www.theriver.asia/wp-content/uploads/2020/01/pngkey.com-airbnb-logo-png-605967.png" alt="OTA">
                                    @elseif($channel === 'Booking.com')
                                        <img src="https://cdn.brandfetch.io/id9mEmLNcV/w/400/h/400/theme/dark/icon.jpeg" alt="OTA">
                                    @elseif($channel === 'MakeMyTrip')
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5KtO6UO_scXnTXfXk99apcH4k6gnFPvTkwg&s" alt="OTA">
                                    @else
                                        <img src="https://via.placeholder.com/40" alt="OTA">
                                    @endif
                                    </div>
                                </div>
                                <div class="col">
                                    {{ $thread['RecipientName'] ?? '' }}
                                    <div class="date">
                                        @if(!empty($thread['LastMessageDate']))
                                            {{ \Carbon\Carbon::parse($thread['LastMessageDate'])->format('d M Y | h:i A') }}
                                        @endif
                                    </div>
                                </div>
                            </div>                            
                        </div>
                        

                        <!-- <div class="thread unread" onclick="openChat()">
                            <div class="row g-2 align-items-center flex-row-reverse">
                                <div class="col-auto">
                                    <div class="otaLogo">
                                        <img src="https://cdn.brandfetch.io/id9mEmLNcV/w/400/h/400/theme/dark/icon.jpeg?c=1bxid64Mup7aczewSAYMX&t=1725855381233" alt="OTA">
                                    </div>
                                </div>
                                <div class="col">
                                    <b>Thread 2</b>
                                    <div class="date">18 Aug 2025 | 10:02 AM</div>
                                </div>
                            </div>                            
                        </div>
                        <div class="thread" onclick="openChat()">
                            <div class="row g-2 align-items-center flex-row-reverse">
                                <div class="col-auto">
                                    <div class="otaLogo">
                                        <img src="https://www.theriver.asia/wp-content/uploads/2020/01/pngkey.com-airbnb-logo-png-605967.png" alt="OTA">
                                    </div>
                                </div>
                                <div class="col">
                                    Thread 3
                                    <div class="date">15 Aug 2025 | 10:02 AM</div>
                                </div>
                            </div>                            
                        </div>

                        <div class="thread" onclick="openChat()">
                            <div class="row g-2 align-items-center flex-row-reverse">
                                <div class="col-auto">
                                    <div class="otaLogo">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcmHJQr5VvHfSluNDPRpicCKKvybZddXX0Lw&s" alt="OTA">
                                    </div>
                                </div>
                                <div class="col">
                                    <b>Thread 4</b>
                                    <div class="date">12 Aug 2025 | 10:02 AM</div>
                                </div>
                            </div>                            
                        </div>

                        <div class="thread" onclick="openChat()">
                            <div class="row g-2 align-items-center flex-row-reverse">
                                <div class="col-auto">
                                    <div class="otaLogo">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5KtO6UO_scXnTXfXk99apcH4k6gnFPvTkwg&s" alt="OTA">
                                    </div>
                                </div>
                                <div class="col">
                                    <b>Thread 5</b>
                                    <div class="date">04 Aug 2025 | 10:02 AM</div>
                                </div>
                            </div>                            
                        </div>
 -->


                    @endif
                        @empty
                            <p>No threads found.</p>
                    @endforelse
                    </div>

                    <!-- Chat Area -->
                    <div class="chat-area">
                        <button class="chat-back-btn" onclick="showThreads()">⬅ Back</button>
                        <div class="messages">
                            <div class="message received">
                                Hello!  
                                <span class="time">20 Aug 2025 | 10:00 AM</span>
                            </div>
                            <div class="message sent attachment">
                                Hi there!
                                <span class="time">20 Aug 2025 | 10:02 AM</span>
                                <a href="#/" class="attachedFile">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-paperclip" viewBox="0 0 16 16">
                                        <path d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0z"/>
                                    </svg>
                                </a>
                            </div>
                            <div class="message received">
                                How are you?  
                                <span class="time">20 Aug 2025 | 10:05 AM</span>
                            </div>
                            <div class="message sent">
                                I’m good, thanks!  
                                <span class="time">20 Aug 2025 | 10:07 AM</span>
                            </div>
                            <div class="message received">
                                Great to hear!  
                                <span class="time">20 Aug 2025 | 10:10 AM</span>
                            </div>
                        </div>

                        <div class="chat-input-area">
                            <input type="text" placeholder="Type a message...">
                            
                            <label for="file" style="cursor:pointer">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-paperclip" viewBox="0 0 16 16">
                                    <path d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0z"/>
                                </svg>
                            </label>
                            <input type="file" id="file" style="display:none;">
                            <button>
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-send-fill" viewBox="0 0 16 16">
                                    <path d="M15.964.686a.5.5 0 0 0-.65-.65L.767 5.855H.766l-.452.18a.5.5 0 0 0-.082.887l.41.26.001.002 4.995 3.178 3.178 4.995.002.002.26.41a.5.5 0 0 0 .886-.083zm-1.833 1.89L6.637 10.07l-.215-.338a.5.5 0 0 0-.154-.154l-.338-.215 7.494-7.494 1.178-.471z"/>
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</section>
<script>
    function openChat() {
        if (window.innerWidth <= 768) {
        document.querySelector(".thread-list").classList.add("hidden");
        document.querySelector(".chat-area").classList.add("active");
        }
    }
    function showThreads() {
        if (window.innerWidth <= 768) {
        document.querySelector(".chat-area").classList.remove("active");
        document.querySelector(".thread-list").classList.remove("hidden");
        }
    }
</script>
@endsection